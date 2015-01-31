//***************************************************************************
//
//       ShortLink.pas
//       工具：RAD Studio XE6
//       日期：2015/01/29 15:51:21
//       作者：ying32
//       QQ  ：396506155
//       MSN ：ying_32@live.cn
//       E-mail：yuanfen3287@vip.qq.com
//       Website：http://www.ying32.com
//
//---------------------------------------------------------------------------
//
//       备注： 快捷方式创建
//
//
//***************************************************************************
unit ShortLink;

interface

uses
  Winapi.Windows,
  Winapi.ShlObj,
  Winapi.ActiveX,
  System.Win.ComObj,
  System.SysUtils;


  function CreateDesktopLink(ANameStr, ExeFileName, ADescription, AArgs: string): Boolean; 
implementation



function CreateDesktopLink(ANameStr, ExeFileName, ADescription, AArgs: string): Boolean;
var
  tmpObject : IUnknown;
  tmpSLink : IShellLink;
  tmpPFile : IPersistFile;
  PIDL : PItemIDList;
  StartupDirectory : array[0..MAX_PATH] of Char;
  StartupFilename : String;
  LinkFilename : WideString;
begin
  Result := False;
  CoInitializeEx(nil, 0);
  try
    StartupFilename := ExeFileName;
    tmpObject := CreateComObject(CLSID_ShellLink);
    tmpSLink := tmpObject as IShellLink;
    tmpPFile := tmpObject as IPersistFile;
    tmpSLink.SetPath(PWideChar(StartupFilename));
    tmpSLink.SetWorkingDirectory(pChar(ExtractFilePath(StartupFilename)));
    SHGetSpecialFolderLocation(0,CSIDL_DESKTOPDIRECTORY,PIDL);
    tmpSLink.SetDescription(PWideChar(ADescription));
    tmpSLink.SetIconLocation(PWideChar(StartupFilename), 0);
   	tmpSLink.SetArguments(PChar(AArgs));
    SHGetPathFromIDList(PIDL,StartupDirectory);
    LinkFilename := WideString(string(StartupDirectory) + '\' + ANameStr + '.lnk');
    Result := tmpPFile.Save(PWideChar(LinkFilename), FALSE) = S_OK;
  finally   
   CoUninitialize;
  end;
end;

end.
