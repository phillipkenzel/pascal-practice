program Addition (input, output);
{ Listet alle Zahlen von input bis 30. }

  const
  MAXIMAL = 29;

  type
  tReihe = 0..MAXIMAL;

  var
  Zahl : integer;
  i : tReihe;

begin
  writeln ('Hallo, ich liste dir alle Zahlen bis einschließlich 30. Bitte nenne eine Zahl zwischen 0 und 10.');
  readln (Zahl);
  if Zahl <= 10 then
  begin
    for i := Zahl to MAXIMAL do
      writeln (i+1)
  end
  else
    writeln ('Diese Zahl ist nicht zwischen 0 und 10.')
end.
