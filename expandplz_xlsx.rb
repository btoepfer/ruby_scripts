# gem install simple_xlsx_reader
require 'simple_xlsx_reader'

# Excel-Datei öffnen
# Das Ergebnis beinhaltet pro Arbeitsblatt ein zweidimensionales Array für die Zeilen
# Bsp: rows=[["PLZ", "Name", "Landkreis"], ["63928-74731", "Walldürn", "Neckar-Odenwald-Kreis"], ....]
f = SimpleXlsxReader.open('PLZ_BW.xlsx')

# Zieldatei öffnen zum Schreiben, 
# der Parameter 'w' leert die Datei 'a' würde neue Zeilen ergänzen (append)
f2 = File.new('plzbw_insert.sql', 'w')
plz = ""
ort = ""
landkreis = ""

# Das Array f.sheets.first.rows (Excle-Datei->ErstesArbeitsblatt->Zeilen) wird
# Zeile für Zeile gelesen
f.sheets.first.rows.each.with_index do |line, i|
  # Die erste Zeile überspringen wir
  unless i==0 then
    plz = line[0]
    ort = line[1]
    landkreis = line[2]
  
    # Ist die PLZ als Bereich (nnnnn-mmmmm) angegeben, dann legen wir für jede PLZ 
    # in diesem Bereich (range) einen eigenen Eintrag an
    # Andernfalls wird nur die Zeile übernommen
    # Das Encoding für den Ausgabestring muss korrigiert werden, andernfalls ist es UTF-8
    m = /([0-9]+)\-([0-9]+)/.match(plz)
    if m then
      ($1..$2).each do |l| 
        f2.puts "insert into plzbw_192(plz, plz_bereich, ort, landkreis) values ('#{l}', '#{plz}', '#{ort}', '#{landkreis}');".encode("ISO-8859-15")
      end
    else
      # Ist die PLZ als Bereich (nnnnn;mmmmm) angegeben, dann legen wir für beide PLZ 
      # einen eigenen Eintrag an
      m = /([0-9]+);([0-9]+)/.match(plz)
      if m then 
        f2.puts "insert into plzbw_192(plz, plz_bereich, ort, landkreis) values ('#{$1}', '#{plz}', '#{ort}', '#{landkreis}');".encode("ISO-8859-15")
        f2.puts "insert into plzbw_192(plz, plz_bereich, ort, landkreis) values ('#{$2}', '#{plz}', '#{ort}', '#{landkreis}');".encode("ISO-8859-15")
      else
        f2.puts "insert into plzbw_192(plz, plz_bereich, ort, landkreis) values ('#{plz}', '#{plz}', '#{ort}', '#{landkreis}');".encode("ISO-8859-15")
      end
    end
  end
end

# Die Zieldatei wird geschlossen
f2.close

