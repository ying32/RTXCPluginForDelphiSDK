unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmRTXCMakeTemplate = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    edt_ProjectName: TEdit;
    btn_Make: TButton;
    chk_MakeActiveX: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_MakeClick(Sender: TObject);
  private
    FTemplateDir: string;

    procedure MakeActiveXTemplate;
    procedure MakePluginTemplate;
  public
    { Public declarations }
  end;

var
  frmRTXCMakeTemplate: TfrmRTXCMakeTemplate;

implementation

{$R *.dfm}

uses
  System.Zip;

function DeleteLeftRight(const s: string): string;
begin
  Result := s;
  Delete(Result, 1, 1);
  Delete(Result, Length(Result), 1);
end;

procedure TfrmRTXCMakeTemplate.btn_MakeClick(Sender: TObject);
begin
  if Length(edt_ProjectName.Text) = 0 then
  begin
    ShowMessage('请输入一个工程名!');
    Exit;
  end;
  if chk_MakeActiveX.Checked then
  begin
    FTemplateDir :=  ExtractFilePath(ParamStr(0)) + 'Template\' + edt_ProjectName.Text + 'Group';
    if not DirectoryExists(FTemplateDir) then
      CreateDir(FTemplateDir);
    MakePluginTemplate;
    MakeActiveXTemplate;
  end else
  begin
    FTemplateDir :=  ExtractFilePath(ParamStr(0)) + 'Template';
    MakePluginTemplate;
  end;
end;

procedure TfrmRTXCMakeTemplate.FormCreate(Sender: TObject);
begin
  FTemplateDir := ExtractFilePath(ParamStr(0)) + 'Template';
  if not DirectoryExists(FTemplateDir) then
    CreateDir(FTemplateDir);
end;

procedure TfrmRTXCMakeTemplate.MakeActiveXTemplate;
var
  ResStream: TResourceStream;
  Zip: TZipFile;
  StrStream: TStringStream;
  LibGUID, InterfaceGUID, InterfaceEventsGUID, CoClassGUID: string;
  ProjectName, CodeStr, ProjectDir: string;
  Buffer: TBytes;
const
  UTF8Data: array[0..2] of byte = ($EF, $BB, $BF);
begin
  ProjectName := edt_ProjectName.Text;
  ProjectDir := FTemplateDir + PathDelim +  ProjectName + 'Ocx';
  if not DirectoryExists(ProjectDir) then
    CreateDir(ProjectDir);

  ResStream := TResourceStream.Create(HInstance, 'ACTIVEXTEMPLATE', 'ZIPDATA');
  try
    Zip := TZipFile.Create;
    try
      LibGUID := TGUID.NewGuid.ToString;
      InterfaceGUID := TGUID.NewGuid.ToString;
      InterfaceEventsGUID := TGUID.NewGuid.ToString;
      CoClassGUID := TGUID.NewGuid.ToString;

      Zip.Open(ResStream, zmRead);
      StrStream := TStringStream.Create;
      try

        // RTXC{%PROJECTNAME%}ActiveXContainer.pas
        Zip.Read('RTXC{%PROJECTNAME%}ActiveXContainer.pas', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%CURRENTDATETIME%>', FormatDateTime('yyyy/MM/dd hh:mm:ss', Now), []);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sActiveXContainer.pas', [ProjectName]));

        // RTXC{%PROJECTNAME%}ActiveXContainerLib.ridl
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}ActiveXContainerLib.ridl', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%CURRENTDATETIME%>', FormatDateTime('yyyy/MM/dd hh:mm:ss', Now), []);
        CodeStr := StringReplace(CodeStr, '<%LIBRARYGUID%>', DeleteLeftRight(LibGUID), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%INTERFACEGUID%>', DeleteLeftRight(InterfaceGUID), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%INTERFACEEVENTSGUID%>', DeleteLeftRight(InterfaceEventsGUID), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%COCLASSGUID%>', DeleteLeftRight(CoClassGUID), [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sActiveXContainerLib.ridl', [ProjectName]));

        // RTXC{%PROJECTNAME%}ActiveXContainerLib_TLB.pas
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}ActiveXContainerLib_TLB.pas', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%CURRENTDATETIME%>', FormatDateTime('yyyy/MM/dd hh:mm:ss', Now), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%LIBRARYGUID%>', LibGUID, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%INTERFACEGUID%>', InterfaceGUID, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%INTERFACEEVENTSGUID%>', InterfaceEventsGUID, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%COCLASSGUID%>', CoClassGUID, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sActiveXContainerLib_TLB.pas', [ProjectName]));

        // RTXC{%PROJECTNAME%}Ocx.dpr
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}Ocx.dpr', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sOcx.dpr', [ProjectName]));


        // RTXC{%PROJECTNAME%}Ocx.dproj
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}Ocx.dproj', Buffer);
        StrStream.Write(Buffer, 3, Length(Buffer) - 3);
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%DPRGUID%>', TGuid.NewGuid.ToString, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.Write(UTF8Data, 3);
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sOcx.dproj', [ProjectName]));


        // ReadMe.txt
        StrStream.Clear;
        Zip.Read('ReadMe.txt', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%COCLASSGUID%>', CoClassGUID, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + 'ReadMe.txt');


        // ufrmMainForm.pas
        Zip.Extract('ufrmMainForm.pas', ProjectDir + PathDelim);

        // ufrmMainForm.dfm
        Zip.Extract('ufrmMainForm.dfm', ProjectDir + PathDelim);
      finally
        StrStream.Free;
      end;
    finally
      Zip.Free;
    end;
  finally
    ResStream.Free;
  end;
end;

procedure TfrmRTXCMakeTemplate.MakePluginTemplate;
var
  ResStream: TResourceStream;
  Zip: TZipFile;
  StrStream: TStringStream;
  LibGUID, InterfaceGUID, InterfaceEventsGUID, CoClassGUID: string;
  ProjectName, CodeStr, ProjectDir: string;
  Buffer: TBytes;
const
  UTF8Data: array[0..2] of byte = ($EF, $BB, $BF);
begin
  ProjectName := edt_ProjectName.Text;
  ProjectDir := FTemplateDir + PathDelim +  'RTXC' + ProjectName;
  if not DirectoryExists(ProjectDir) then
    CreateDir(ProjectDir);

  ResStream := TResourceStream.Create(HInstance, 'PLUGINTEMPLATE', 'ZIPDATA');
  try
    Zip := TZipFile.Create;
    try
      LibGUID := TGUID.NewGuid.ToString;
      InterfaceGUID := TGUID.NewGuid.ToString;
      InterfaceEventsGUID := TGUID.NewGuid.ToString;
      CoClassGUID := TGUID.NewGuid.ToString;

      Zip.Open(ResStream, zmRead);
      StrStream := TStringStream.Create;
      try

        // RTXC.Plugin.pas
        Zip.Read('RTXC.Plugin.pas', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%CURRENTDATETIME%>', FormatDateTime('yyyy/MM/dd hh:mm:ss', Now), [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + 'RTXC.Plugin.pas');

        // RTXC{%PROJECTNAME%}PluginLib.ridl
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}PluginLib.ridl', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%CURRENTDATETIME%>', FormatDateTime('yyyy/MM/dd hh:mm:ss', Now), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%LIBRARYGUID%>', DeleteLeftRight(LibGUID), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%COCLASSGUID%>', DeleteLeftRight(CoClassGUID), [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sPluginLib.ridl', [ProjectName]));

        // RTXC{%PROJECTNAME%}PluginLib_TLB.pas
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}PluginLib_TLB.pas', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%CURRENTDATETIME%>', FormatDateTime('yyyy/MM/dd hh:mm:ss', Now), [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%LIBRARYGUID%>', LibGUID, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%COCLASSGUID%>', CoClassGUID, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%sPluginLib_TLB.pas', [ProjectName]));

        // RTXC{%PROJECTNAME%}.dpr
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}.dpr', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%s.dpr', [ProjectName]));


        // RTXC{%PROJECTNAME%}.dproj
        StrStream.Clear;
        Zip.Read('RTXC{%PROJECTNAME%}.dproj', Buffer);
        StrStream.Write(Buffer, 3, Length(Buffer) - 3);
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%DPRGUID%>', TGuid.NewGuid.ToString, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.Write(UTF8Data, 3);
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + Format('RTXC%s.dproj', [ProjectName]));


        // ReadMe.txt
        StrStream.Clear;
        Zip.Read('ReadMe.txt', Buffer);
        StrStream.Write(Buffer, Length(Buffer));
        StrStream.Position := 0;
        CodeStr := StringReplace(StrStream.DataString, '<%PROJECTNAME%>', ProjectName, [rfReplaceAll]);
        CodeStr := StringReplace(CodeStr, '<%COCLASSGUID%>', CoClassGUID, [rfReplaceAll]);
        StrStream.Clear;
        StrStream.WriteString(CodeStr);
        StrStream.SaveToFile(ProjectDir + PathDelim + 'ReadMe.txt');


      finally
        StrStream.Free;
      end;
    finally
      Zip.Free;
    end;
  finally
    ResStream.Free;
  end;
end;

end.
