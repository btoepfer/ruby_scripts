
# gem install simple_xlsx_reader
require 'simple_xlsx_reader'
require 'find'

def generate_kataloge(filename)
  # Excel-Datei öffnen
  # Das Ergebnis beinhaltet pro Arbeitsblatt ein zweidimensionales Array für die Zeilen
  # Bsp: rows=[["Code", "Name"], ["298_1", "präzise Planung"], ....]
  f = SimpleXlsxReader.open(filename)

  

  katalog_code = ""
  katalog_name = ""
  katalog_version = ""
  katalog_beschreibung = ""
  sub_katalog = ""
  curr_katalog = ""
  code = ""
  wert = ""
  sort = ""
  sql  = ""

  # Ermitteln der Kataloginfos (Metainformationen)
  # In der dritten Zeile steht der Katalogcode
  katalog_code = f.sheets.first.rows[2][1]
  # In der vierten der Name
  katalog_name = f.sheets.first.rows[3][1]
  # In der sechsten die Beschreibung
  katalog_beschreibung = f.sheets.first.rows[3][1]
  # In der achten die Version
  katalog_version = f.sheets.first.rows[7][1]

  katalog_name = "IMP_2.0_#{katalog_code}-#{katalog_name}"
  puts katalog_name

  # Zieldatei öffnen zum Schreiben, 
  # der Parameter 'w' leert die Datei 'a' würde neue Zeilen ergänzen (append)
  f2 = File.new("./sql/gen_#{katalog_name}.sql", 'w') 

  # Hauptkatalog anlegen
  sql = "
    declare
      TYPE kat_array IS VARRAY(15) OF number; 
      v_kat_id  number;
      v_katw_id number;
      v_ke_id   number;
      v_kcke_id number;
      v_kwe_id  number;
      v_katz_id number;
      v_kdf_id number;
      v_kat_haupt_id number;
      v_kat_kat_id number := NULL;
      v_kat_array kat_array:= kat_array(NULL, NULL, NULL,NULL, NULL, NULL,NULL, NULL, NULL,NULL, NULL, NULL,NULL, NULL, NULL);
    begin
    v_kat_id := kat_seq.nextval;
    v_kat_haupt_id := v_kat_id;
    insert into katalog_neu 
      (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
      values 
      (v_kat_id, v_kat_haupt_id, '#{katalog_name}', '#{katalog_beschreibung}', pkg_migration_imp20.fund_get_anw_id, 0, 1, 0, 0, 0, 0, 1, v_kat_array(1));
    
    insert into katalog_extern 
      (KE_ID,KE_EXT_ID,KE_BEZEICHNUNG,KE_HERKUNFT,KE_VERSION)
      values 
      (ke_seq.nextval, '#{katalog_code}', '#{katalog_name}', 'IMP', '#{katalog_version}') returning ke_id into v_ke_id;
    insert into KATALOG_CRIME_KATALOG_EXTERN 
      (kcke_id, kcke_ke_id, kcke_kat_id) 
      values 
      (kcke_seq.nextval, v_ke_id, v_kat_id) returning kcke_id into v_kcke_id; 
    insert into ZENT_MAPP_KAT_KAT_EXT_ZWECK 
      (zmk_id, zmk_zmz_id, zmk_anw_id, zmk_kcke_id, zmk_kat_id) 
      values 
      (zmk_seq.nextval, pkg_zent_mapp_ref_obj_pflege.fund_GetZweckID('IMP-PIAV'), pkg_migration_imp20.fund_get_anw_id, v_kcke_id, v_kat_id);
    if v_kat_array(2) is null then v_kat_array(2) := v_kat_id; end if;
    "

  f2.puts sql.encode("ISO-8859-15")

  # Das Array f.sheets.first.rows (Excle-Datei->ErstesArbeitsblatt->Zeilen) wird
  # Zeile für Zeile gelesen
  f.sheets.first.rows.each.with_index do |line, i|
    
    # Die erste 15 Zeilen überspringen wir
    if i >= 14 then
      sub_katalog = line[6]
      if sub_katalog != curr_katalog then
        curr_katalog = sub_katalog
        sql = "
        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, '#{curr_katalog}', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        "
        f2.puts sql.encode("ISO-8859-15")
      end

      code = line[0]
      wert = line[1]
      sort = line[5]
      sql  = ""
    
      # Das Encoding für den Ausgabestring muss korrigiert werden, andernfalls ist es UTF-8
      
      sql = "
        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('#{wert}', '', v_kat_id, v_kat_id, #{sort}, '#{code}') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '#{code}',v_ke_id, '#{wert}', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        \n"
      f2.puts sql.encode("ISO-8859-15")
    end
  end

  # Die Zieldatei wird geschlossen
  f2.close
end

def import_kataloge(dirname)
  # Lesen aller Dateien in dem Verzeichnis
  Dir.foreach(dirname) do |f|
    # voll qualifizierter Dateiname
    filename = "#{dirname}/#{f}"
    
    # Wenn es kein Verzeichnis ist
    unless File.directory?(filename)
      generate_kataloge(filename)
    end #unless
  end
end

# Wechseln in der angegebene Verzeichnis
Dir.chdir(ARGV[0])  
current_dir = Dir.pwd

#dirname = "#{current_dir}/#{f}"
  
# Wenn es ein Verzeichnis ist, alle Dateien innerhalb prüfen
if File.directory?(current_dir)
  import_kataloge(current_dir)
end #if
  

