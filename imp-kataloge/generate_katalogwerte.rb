# gem install simple_xlsx_reader
require 'simple_xlsx_reader'

# Excel-Datei öffnen
# Das Ergebnis beinhaltet pro Arbeitsblatt ein zweidimensionales Array für die Zeilen
# Bsp: rows=[["Code", "Name"], ["298_1", "präzise Planung"], ....]
f = SimpleXlsxReader.open('298-v1_0_xml.xlsx')

# Zieldatei öffnen zum Schreiben, 
# der Parameter 'w' leert die Datei 'a' würde neue Zeilen ergänzen (append)
f2 = File.new('insert_katalogwerte_298.sql', 'w')
code = ""
wert = ""

# Das Array f.sheets.first.rows (Excle-Datei->ErstesArbeitsblatt->Zeilen) wird
# Zeile für Zeile gelesen
f.sheets.first.rows.each.with_index do |line, i|
  # Die erste Zeile überspringen wir
  unless i==0 then
    code = line[0]
    wert = line[1]
  
  
    # Das Encoding für den Ausgabestring muss korrigiert werden, andernfalls ist es UTF-8
    f2.puts "insert into katalogwert_neu".encode("ISO-8859-15")
    f2.puts " (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)".encode("ISO-8859-15")
    f2.puts " values".encode("ISO-8859-15")
    f2.puts " ('#{wert}', '', v_kat_id, v_kat_id, #{i}, '#{code}') returning katw_id into v_katw_id;".encode("ISO-8859-15")
    f2.puts "insert into KATALOGWERT_EXTERN".encode("ISO-8859-15")
    f2.puts " (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)".encode("ISO-8859-15")
    f2.puts " values".encode("ISO-8859-15")
    f2.puts " (kwe_seq.nextval, null, '#{code}',v_ke_id, '#{wert}', null) returning kwe_id into v_kwe_id;".encode("ISO-8859-15")
    f2.puts "insert into KATALOGW_CRIME_KATALOGW_EXTERN".encode("ISO-8859-15")
    f2.puts " (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)".encode("ISO-8859-15")
    f2.puts " values".encode("ISO-8859-15")
    f2.puts " (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);".encode("ISO-8859-15")
    f2.puts "\n"
  end
end

# Die Zieldatei wird geschlossen
f2.close

