program Shortcut;


{$IF CompilerVersion >= 21.0}
   {$WEAKLINKRTTI ON}
   {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([]) }
{$ENDIF}

{$R *.res}

uses
  ActiveX,
  System.Win.ComObj;

procedure SendIM;
var
  objApi, objApp, objIm: OleVariant;
begin
  if ParamCount = 1 then
  begin
    try
      CoInitializeEx(nil, 0);
      try
        objApi := CreateOleObject('RTXClient.RTXAPI');
        objApp := objApi.GetObject('AppRoot');
        objIm := objApp.GetAppObject('RTXPlugin.IM');
        objIm.SendIM(ParamStr(1), '');
      finally
        CoUninitialize;
      end;
    except
    end;
  end;
end;

begin
  SendIM;
end.
