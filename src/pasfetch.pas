program pasfetch;

{$mode objfpc}

uses
	Classes;
var
	Config: TStringList;
	OSName, OSVersion: string;
begin
	Config := TStringList.Create;

	try
		Config.LoadFromFile('/etc/os-release');

		OSName := Config.Values['NAME'];
		OSVersion := Config.Values['VERSION'];

		OSName := Copy(OSName, 2, Length(OSName) - 2);
		OSVersion := Copy(OSVersion, 2, Length(OSVersion) - 2);
	finally
		Config.Free;
	end;

	writeln('OS: ', OSName, ' ', OSVersion)
end.
