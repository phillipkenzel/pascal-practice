program Test (input, output);
{ Registrierung und Abfrage von Personen in einem Array mit Informationen zum jeweiligen Namen und Alter. }

	type
	tIndex = integer;
	tPerson = record
				Name : record
						Vorname : string;
						Nachname : string
						end;
				Alter : integer;
				Adresse : record
						Strasse : string;
						Nummer : integer;
						Postleitzahl : string;
						Ort : string
						end;
			end;
	tEintrag = array [tIndex] of tPerson;

	var
	NeuerEintrag : tEintrag;
	Ergebnis : tPerson;
	Ordnungsnummer,
	RufAlter,
	Hausnummer,
	Suchwert : tIndex;
	RufName,
	RufName2,
	Strassenname,
	PLZ,
	Wohnort,
	Antwort : string;

begin
	writeln('Hallo! Mit diesem Programm kannst du Personen in ein Register eintragen. Bitte vergebe fuer die erste Person eine Ordnungsnummer und beginne bei 1. Du kannst jederzeit durch eine "0" den Vorgang abbrechen.');
	readln(Ordnungsnummer);
	if Ordnungsnummer = 1 then
	begin
		writeln('Wie lautet der Vorname der Person?');
		readln(RufName);
		NeuerEintrag[Ordnungsnummer].Name.Vorname := RufName;
		writeln('Wie lautet der Nachname der Person?');
		readln(RufName2);
		NeuerEintrag[Ordnungsnummer].Name.Nachname := RufName2;
		writeln('Wie alt ist die Person?');
		readln(RufAlter);
		NeuerEintrag[Ordnungsnummer].Alter := RufAlter;
		writeln('Wo wohnt die Person? Bitte gebe zunaechst den Strassennamen und dann die Hausnummer ein.');
		readln(Strassenname);
		NeuerEintrag[Ordnungsnummer].Adresse.Strasse := Strassenname;
		readln(Hausnummer);
		NeuerEintrag[Ordnungsnummer].Adresse.Nummer := Hausnummer;
		writeln('Bitte gebe nun die Postleitzahl und den Wohnort an.');
		readln(PLZ);
		NeuerEintrag[Ordnungsnummer].Adresse.Postleitzahl := PLZ;
		readln(Wohnort);
		NeuerEintrag[Ordnungsnummer].Adresse.Ort := Wohnort;
		writeln('...');
		writeln('...');
		writeln('...');
		writeln('Bitte vergebe die naechste Ordnungsnummer. Erinnerung: Mit der Eingabe "0" kannst du den Vorgang abbrechen.');
		readln(Ordnungsnummer);

		while Ordnungsnummer <> 0 do
		begin
			writeln('Wie lautet der Vorname der Person?');
			readln(RufName);
			NeuerEintrag[Ordnungsnummer].Name.Vorname := RufName;
			writeln('Wie lautet der Nachname der Person?');
			readln(RufName2);
			NeuerEintrag[Ordnungsnummer].Name.Nachname := RufName2;
			writeln('Wie alt ist die Person?');
			readln(RufAlter);
			NeuerEintrag[Ordnungsnummer].Alter := RufAlter;
			writeln('Wo wohnt die Person? Bitte gebe zunaechst den Strassennamen und dann die Hausnummer ein.');
			readln(Strassenname);
			NeuerEintrag[Ordnungsnummer].Adresse.Strasse := Strassenname;
			readln(Hausnummer);
			NeuerEintrag[Ordnungsnummer].Adresse.Nummer := Hausnummer;
			writeln('Bitte gebe nun die Postleitzahl und den Wohnort an.');
			readln(PLZ);
			NeuerEintrag[Ordnungsnummer].Adresse.Postleitzahl := PLZ;
			readln(Wohnort);
			NeuerEintrag[Ordnungsnummer].Adresse.Ort := Wohnort;
			writeln('...');
			writeln('...');
			writeln('...');
			writeln('Bitte vergebe die naechste Ordnungsnummer. Erinnerung: Mit der Eingabe "0" kannst du den Vorgang abbrechen.');
			readln(Ordnungsnummer);
		end;
	end
	else
		writeln('Danke fuer deine Zeit. Der Vorgang wird abgebrochen ...');

	writeln('ENDE der Registrierung.');
	writeln('...');
	writeln('...');
	writeln('...');

	writeln('Moechtest du nun eine Abfrage aus diesem Register starten? Antworte mit "JA" oder "NEIN".');
	readln(Antwort);
	if Antwort = 'JA' then
	begin
		writeln('...');
		writeln('...');
		writeln('...');
		writeln('START der Abfrage.');
		writeln('...');
		writeln('...');
		writeln('...');
		writeln('Welche Person suchst du? Bitte gib ihre Ordnungsnummer an. Du kannst diesen Prozess wieder mit Eingabe einer "0" abbrechen.');
		readln(Suchwert);
		Ergebnis := NeuerEintrag[Suchwert];
		writeln('Name: ', Ergebnis.Name.Vorname, ', ', Ergebnis.Name.Nachname, '.');
		writeln('Alter: ', Ergebnis.Alter, ' Jahre alt.');
		writeln('Adresse: ', Ergebnis.Adresse.Strasse, ' ', Ergebnis.Adresse.Nummer, ' in ', Ergebnis.Adresse.Postleitzahl, ' ', Ergebnis.Adresse.Ort);

		writeln('Welche weitere Person suchst du? Bitte gib ihre Ordnungsnummer an.');
		writeln('Denk dran: Wenn du nicht fortfahren willst, einfach eine "0" eingeben.');
		readln(Suchwert);

		while Suchwert <> 0 do
		begin
			Ergebnis := NeuerEintrag[Suchwert];
			writeln('Name: ', Ergebnis.Name.Vorname, ', ', Ergebnis.Name.Nachname, '.');
			writeln('Alter: ', Ergebnis.Alter, ' Jahre alt.');
			writeln('Adresse: ', Ergebnis.Adresse.Strasse, ' ', Ergebnis.Adresse.Nummer, ' in ', Ergebnis.Adresse.Postleitzahl, ' ', Ergebnis.Adresse.Ort);
			writeln('Welche weitere Person suchst du? Bitte gib ihre Ordnungsnummer an.');
			writeln('Denk dran: Wenn du nicht fortfahren willst, einfach eine "0" eingeben.');
			readln(Suchwert);
		end;

		writeln('Die Abfrage endet nun. Auf Wiedersehen!');
	end
	else
		writeln('Schade, dann bis zum naechsten Mal!')
end.
