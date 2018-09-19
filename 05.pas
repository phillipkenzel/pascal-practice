program Addition (input, output);
{ Listet alle Zahlen von input bis 30. }

  const
  MAXIMAL = 30;

  type
  tReihe = 0..MAXIMAL;

  var
  Zahl : integer;
  i : tReihe;

begin
  writeln ('Nenne eine Zahl zwischen 0 und 10.');
  readln (Zahl);
  for i := 0 to MAXIMAL do
    writeln (i+1)
end.
