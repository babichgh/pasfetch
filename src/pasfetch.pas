program pasfetch;

uses
	Classes;

procedure PrintOSInfo;
var
	Config: TStringList;
        OSName, OSVersion: string;
begin
        Config := TStringList.Create;
 
        
        Config.LoadFromFile('/etc/os-release');

        OSName := Config.Values['NAME'];
        OSVersion := Config.Values['VERSION'];

        OSName := Copy(OSName, 2, Length(OSName) - 2);
        OSVersion := Copy(OSVersion, 2, Length(OSVersion) - 2);

        Config.Free;

        writeln('OS: ', OSName, ' ', OSVersion)
end;

begin
	PrintOSInfo
end.
