unit uCommon;

interface

uses
  System.SysUtils,
  System.Generics.Collections;

type
  TTipsRec = record
    Subject: string;
    TipsType: Integer;
    mDate: TDate;
    mTime: TTime;
    Body: string;
    Receivers: string;
  public
    class function JSONFileToList(const AFileName: string;
       AList: TList<TTipsRec>): Boolean; static;
    class procedure ListToJSONFile(AFileName: string; AList: TList<TTipsRec>); static;
  end;

implementation

uses
  SuperObject,
  System.Rtti;

{ TTipsRec }

class function TTipsRec.JSONFileToList(const AFileName: string;
  AList: TList<TTipsRec>): Boolean;
var
  JSON, JSONArrObj: ISuperObject;
  JSONArr: TSuperArray;
  LError: Boolean;
  I: Integer;
  Info: TTipsRec;
  RX: TRttiContext;
  RT: TRttiType;
  RF: TRttiField;
  LTypeName: string;
begin
  LError := True;
  JSON := TSuperObject.ParseFile(AFileName, False);
  AList.Clear;
  if Assigned(JSON) then
  begin
    JSONArr := JSON.AsArray;
    if Assigned(JSONArr) then
    begin
      if JSONArr.Length > 0 then
      begin
        RX := TRttiContext.Create;
        try
          RT := RX.GetType(TypeInfo(TTipsRec));
          for I := 0 to JSonArr.Length - 1 do
          begin
            JSONArrObj := JSONArr[I];
            for RF in RT.AsRecord.GetFields do
            begin
              LTypeName := RF.FieldType.Name.ToLower;

              if SameStr(LTypeName, 'string') then
                RF.SetValue(@Info, JSONArrObj.S[RF.Name])
              else if SameStr(LTypeName, 'integer') then
                RF.SetValue(@Info, JSONArrObj.I[RF.Name])
              else if SameStr(LTypeName, 'tdate') then
                RF.SetValue(@Info, JSONArrObj.D[RF.Name])
              else if SameStr(LTypeName, 'ttime') then
                RF.SetValue(@Info, JSONArrObj.D[RF.Name]);
            end;
            AList.Add(Info);
          end;
        finally
          RX.Free;
        end;
        LError := False;
      end;
    end;
  end;
  Result := LError = False;
end;

class procedure TTipsRec.ListToJSONFile(AFileName: string;
  AList: TList<TTipsRec>);
var
  JSON, JOSub: ISuperObject;
  JSONArr: TSuperArray;
  RX: TRttiContext;
  RT: TRttiType;
  RF: TRttiField;
  Item: TTipsRec;
  LTypeName: string;
begin
  RX := TRttiContext.Create;
  try
    RT := RX.GetType(TypeInfo(TTipsRec));
    JSON := SO('[]');
    JSONArr := JSON.AsArray;
    for Item in AList do
    begin
      JOSub := SO();
      for RF in RT.AsRecord.GetFields do
      begin
        LTypeName := RF.FieldType.Name.ToLower;

        if SameStr(LTypeName, 'string') then
          JOSub.S[RF.Name] := RF.GetValue(@Item).AsString
        else if SameStr(LTypeName, 'integer') then
          JOSub.I[RF.Name] := RF.GetValue(@Item).AsInteger
        else if SameStr(LTypeName, 'tdate') then
          JOSub.D[RF.Name] := RF.GetValue(@Item).AsExtended
        else if SameStr(LTypeName, 'ttime') then
          JOSub.D[RF.Name] := RF.GetValue(@Item).AsExtended;
      end;
      JSONArr.Add(JOSub);
    end;
    JSON.SaveTo(AFileName);
  finally
    RX.Free;
  end;
end;

end.
