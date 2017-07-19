
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
      (v_kat_id, v_kat_haupt_id, 'IMP_2.0_298-OK-Indikator', 'OK-Indikator', pkg_migration_imp20.fund_get_anw_id, 0, 1, 0, 0, 0, 0, 1, v_kat_array(1));
    
    insert into katalog_extern 
      (KE_ID,KE_EXT_ID,KE_BEZEICHNUNG,KE_HERKUNFT,KE_VERSION)
      values 
      (ke_seq.nextval, '298', 'IMP_2.0_298-OK-Indikator', 'IMP', 'V1.0') returning ke_id into v_ke_id;
    insert into KATALOG_CRIME_KATALOG_EXTERN 
      (kcke_id, kcke_ke_id, kcke_kat_id) 
      values 
      (kcke_seq.nextval, v_ke_id, v_kat_id) returning kcke_id into v_kcke_id; 
    insert into ZENT_MAPP_KAT_KAT_EXT_ZWECK 
      (zmk_id, zmk_zmz_id, zmk_anw_id, zmk_kcke_id, zmk_kat_id) 
      values 
      (zmk_seq.nextval, pkg_zent_mapp_ref_obj_pflege.fund_GetZweckID('IMP-PIAV'), pkg_migration_imp20.fund_get_anw_id, v_kcke_id, v_kat_id);
    if v_kat_array(2) is null then v_kat_array(2) := v_kat_id; end if;
    

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Vorbereitung und Planung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('pr�zise Planung', '', v_kat_id, v_kat_id, 1, '298_1') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_1',v_ke_id, 'pr�zise Planung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Ausf�hrung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('arbeitsteiliges Zusammenwirken', '', v_kat_id, v_kat_id, 10, '298_10') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_10',v_ke_id, 'arbeitsteiliges Zusammenwirken', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Einsatz von polizeilich "unbelasteten" Personen', '', v_kat_id, v_kat_id, 11, '298_11') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_11',v_ke_id, 'Einsatz von polizeilich "unbelasteten" Personen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Konstruktion schwer durchschaubarer Firmengeflechte', '', v_kat_id, v_kat_id, 12, '298_12') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_12',v_ke_id, 'Konstruktion schwer durchschaubarer Firmengeflechte', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Finanzgebaren', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Einsatz von Geldmitteln ungekl�rter Herkunft im Zusammenhang mit Investitionen', '', v_kat_id, v_kat_id, 13, '298_13') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_13',v_ke_id, 'Einsatz von Geldmitteln ungekl�rter Herkunft im Zusammenhang mit Investitionen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Inkaufnahme von Verlusten bei Gewerbebetrieben', '', v_kat_id, v_kat_id, 14, '298_14') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_14',v_ke_id, 'Inkaufnahme von Verlusten bei Gewerbebetrieben', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Diskrepanz zwischen dem Einsatz finanzieller Mittel und dem zu erwartenden Gewinn', '', v_kat_id, v_kat_id, 15, '298_15') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_15',v_ke_id, 'Diskrepanz zwischen dem Einsatz finanzieller Mittel und dem zu erwartenden Gewinn', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Auff�lligkeit bei Geldanlagen, z.B. beim Kauf von Immobilien oder sonstigen Sachwerten, die in keinem Verh�ltnis zum Einkommen stehen', '', v_kat_id, v_kat_id, 16, '298_16') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_16',v_ke_id, 'Auff�lligkeit bei Geldanlagen, z.B. beim Kauf von Immobilien oder sonstigen Sachwerten, die in keinem Verh�ltnis zum Einkommen stehen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Verwertung der Beute', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('R�ckfluss in den legalen Wirtschaftskreislauf', '', v_kat_id, v_kat_id, 17, '298_17') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_17',v_ke_id, 'R�ckfluss in den legalen Wirtschaftskreislauf', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Ver�u�erung im Rahmen eigener (legaler) Wirtschaftst�tigkeiten', '', v_kat_id, v_kat_id, 18, '298_18') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_18',v_ke_id, 'Ver�u�erung im Rahmen eigener (legaler) Wirtschaftst�tigkeiten', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Ma�nahmen der Geldw�sche', '', v_kat_id, v_kat_id, 19, '298_19') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_19',v_ke_id, 'Ma�nahmen der Geldw�sche', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Vorbereitung und Planung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Anpassung an Markterfordernisse durch Ausn�tzen von Marktl�cken, Erkundungen von Bed�rfnissen u.�.', '', v_kat_id, v_kat_id, 2, '298_2') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_2',v_ke_id, 'Anpassung an Markterfordernisse durch Ausn�tzen von Marktl�cken, Erkundungen von Bed�rfnissen u.�.', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Konspiratives T�terverhalten', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Gegenobservation', '', v_kat_id, v_kat_id, 20, '298_20') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_20',v_ke_id, 'Gegenobservation', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Abschottung', '', v_kat_id, v_kat_id, 21, '298_21') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_21',v_ke_id, 'Abschottung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Decknamen', '', v_kat_id, v_kat_id, 22, '298_22') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_22',v_ke_id, 'Decknamen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Codierung in Sprache und Schrift', '', v_kat_id, v_kat_id, 23, '298_23') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_23',v_ke_id, 'Codierung in Sprache und Schrift', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Verwendung modernster technischer Mittel zur Umgehung polizeilicher �berwachungsma�nahmen', '', v_kat_id, v_kat_id, 24, '298_24') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_24',v_ke_id, 'Verwendung modernster technischer Mittel zur Umgehung polizeilicher �berwachungsma�nahmen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'T�terverbindungen / Tatzusammenh�nge', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('�berregional', '', v_kat_id, v_kat_id, 25, '298_25') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_25',v_ke_id, '�berregional', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('national', '', v_kat_id, v_kat_id, 26, '298_26') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_26',v_ke_id, 'national', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('international', '', v_kat_id, v_kat_id, 27, '298_27') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_27',v_ke_id, 'international', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Gruppenstruktur', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('hierarchischer Aufbau', '', v_kat_id, v_kat_id, 28, '298_28') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_28',v_ke_id, 'hierarchischer Aufbau', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('ein nicht ohne weiteres erkl�rbares Abh�ngigkeits- oder Autorit�tsverh�ltnis zwischen mehreren Tatverd�chtigen', '', v_kat_id, v_kat_id, 29, '298_29') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_29',v_ke_id, 'ein nicht ohne weiteres erkl�rbares Abh�ngigkeits- oder Autorit�tsverh�ltnis zwischen mehreren Tatverd�chtigen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Vorbereitung und Planung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Arbeit auf Bestellung', '', v_kat_id, v_kat_id, 3, '298_3') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_3',v_ke_id, 'Arbeit auf Bestellung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Gruppenstruktur', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('internes Sanktionssystem', '', v_kat_id, v_kat_id, 30, '298_30') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_30',v_ke_id, 'internes Sanktionssystem', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Hilfe f�r Gruppenmitglieder', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Fluchtunterst�tzung', '', v_kat_id, v_kat_id, 31, '298_31') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_31',v_ke_id, 'Fluchtunterst�tzung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Beauftragung bestimmter Anw�lte und deren Honorierung durch Dritte', '', v_kat_id, v_kat_id, 32, '298_32') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_32',v_ke_id, 'Beauftragung bestimmter Anw�lte und deren Honorierung durch Dritte', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Aufwendung gr��erer Barmittel im Rahmen der Verteidigung', '', v_kat_id, v_kat_id, 33, '298_33') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_33',v_ke_id, 'Aufwendung gr��erer Barmittel im Rahmen der Verteidigung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('hohe Kautionsangebote', '', v_kat_id, v_kat_id, 34, '298_34') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_34',v_ke_id, 'hohe Kautionsangebote', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Bedrohung und Einsch�chterung von Verfahrensbeteiligten', '', v_kat_id, v_kat_id, 35, '298_35') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_35',v_ke_id, 'Bedrohung und Einsch�chterung von Verfahrensbeteiligten', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Unauffindbarkeit von zuvor verf�gbaren Zeugen', '', v_kat_id, v_kat_id, 36, '298_36') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_36',v_ke_id, 'Unauffindbarkeit von zuvor verf�gbaren Zeugen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('�ngstliches Schweigen von Betroffenen', '', v_kat_id, v_kat_id, 37, '298_37') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_37',v_ke_id, '�ngstliches Schweigen von Betroffenen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('�berraschendes Benennen von Entlastungszeugen', '', v_kat_id, v_kat_id, 38, '298_38') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_38',v_ke_id, '�berraschendes Benennen von Entlastungszeugen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Betreuung in der Untersuchungshaft / Strafhaft', '', v_kat_id, v_kat_id, 39, '298_39') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_39',v_ke_id, 'Betreuung in der Untersuchungshaft / Strafhaft', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Vorbereitung und Planung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('hohe Investitionen, z.B. durch Vorfinanzierung aus nicht erkennbaren Quellen', '', v_kat_id, v_kat_id, 4, '298_4') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_4',v_ke_id, 'hohe Investitionen, z.B. durch Vorfinanzierung aus nicht erkennbaren Quellen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Hilfe f�r Gruppenmitglieder', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Versorgung von Angeh�rigen', '', v_kat_id, v_kat_id, 40, '298_40') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_40',v_ke_id, 'Versorgung von Angeh�rigen', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Wiederaufnahme nach der Haftentlassung', '', v_kat_id, v_kat_id, 41, '298_41') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_41',v_ke_id, 'Wiederaufnahme nach der Haftentlassung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Korrumpierung', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Einbeziehung in das soziale Umfeld der T�ter', '', v_kat_id, v_kat_id, 42, '298_42') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_42',v_ke_id, 'Einbeziehung in das soziale Umfeld der T�ter', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Herbeif�hren von Abh�ngigkeiten (z.B. durch Sex, verbotenes Gl�cksspiel, Zins- und Kreditwucher)', '', v_kat_id, v_kat_id, 43, '298_43') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_43',v_ke_id, 'Herbeif�hren von Abh�ngigkeiten (z.B. durch Sex, verbotenes Gl�cksspiel, Zins- und Kreditwucher)', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Zahlung von Bestechungsgeldern, �berlassung von Ferienwohnungen, Luxusfahrzeugen usw.', '', v_kat_id, v_kat_id, 44, '298_44') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_44',v_ke_id, 'Zahlung von Bestechungsgeldern, �berlassung von Ferienwohnungen, Luxusfahrzeugen usw.', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Monopolisierungsbestrebungen', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('�bernahme von Gesch�ftsbetrieben und Teilhaberschaften', '', v_kat_id, v_kat_id, 45, '298_45') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_45',v_ke_id, '�bernahme von Gesch�ftsbetrieben und Teilhaberschaften', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('F�hrung von Gesch�ftsbetrieben durch Strohleute', '', v_kat_id, v_kat_id, 46, '298_46') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_46',v_ke_id, 'F�hrung von Gesch�ftsbetrieben durch Strohleute', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Kontrolle bestimmter Gesch�ftszweige', '', v_kat_id, v_kat_id, 47, '298_47') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_47',v_ke_id, 'Kontrolle bestimmter Gesch�ftszweige', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Schutzgew�hrung gegen Entgelt', '', v_kat_id, v_kat_id, 48, '298_48') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_48',v_ke_id, 'Schutzgew�hrung gegen Entgelt', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, '�ffentlichkeitsarbeit', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('gesteuerte oder tendenzi�se Ver�ffentlichungen, die von einem bestimmten Tatverdacht ablenken', '', v_kat_id, v_kat_id, 49, '298_49') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_49',v_ke_id, 'gesteuerte oder tendenzi�se Ver�ffentlichungen, die von einem bestimmten Tatverdacht ablenken', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Vorbereitung und Planung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Verschaffung und Nutzung legaler Einfluss-Sph�ren', '', v_kat_id, v_kat_id, 5, '298_5') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_5',v_ke_id, 'Verschaffung und Nutzung legaler Einfluss-Sph�ren', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, '�ffentlichkeitsarbeit', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('systematischer Versuch der Ausnutzung gesellschaftlicher Einrichtungen (z.B. durch auff�lliges M�zenatentum)', '', v_kat_id, v_kat_id, 50, '298_50') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_50',v_ke_id, 'systematischer Versuch der Ausnutzung gesellschaftlicher Einrichtungen (z.B. durch auff�lliges M�zenatentum)', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Vorbereitung und Planung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Vorhalten von Ruher�umen im Ausland', '', v_kat_id, v_kat_id, 6, '298_6') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_6',v_ke_id, 'Vorhalten von Ruher�umen im Ausland', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        v_kat_id := kat_seq.nextval;
        insert into katalog_neu 
          (KAT_ID, KAT_HAUPT_ID, KAT_NAME,KAT_BESCHREIBUNG,KAT_ANW_ID,KAT_LOKALE_ADMIN_PFL_01,KAT_DF_01,
           KAT_NGO_01,KAT_HIERARCHIESCH_01,KAT_VK_01,KAT_VG_01,KAT_GESCHLOSSEN_01, KAT_KAT_ID)
          values 
          (v_kat_id, v_kat_haupt_id, 'Ausf�hrung der Tat', '', pkg_migration_imp20.fund_get_anw_id, 0, 1, 
           0, 0, 0, 0, 1, v_kat_array(2));
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('pr�zise und qualifizierte Tatdurchf�hrung', '', v_kat_id, v_kat_id, 7, '298_7') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_7',v_ke_id, 'pr�zise und qualifizierte Tatdurchf�hrung', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('Verwendung verh�ltnism��ig teurer oder schwierig einzusetzender wissenschaftlicher Mittel und Erkenntnisse', '', v_kat_id, v_kat_id, 8, '298_8') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_8',v_ke_id, 'Verwendung verh�ltnism��ig teurer oder schwierig einzusetzender wissenschaftlicher Mittel und Erkenntnisse', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        

        insert into katalogwert_neu
          (KATW_WERT1,KATW_WERT2,KATW_KAT_ID,KATW_KAT_HAUPT_ID,KATW_SORTIERUNG,KATW_KOMMENTAR)
          values
          ('T�tigwerden von Spezialisten (auch aus dem Ausland)', '', v_kat_id, v_kat_id, 9, '298_9') returning katw_id into v_katw_id;
        insert into KATALOGWERT_EXTERN
          (kwe_id, kwe_int_id, kwe_ext_id, kwe_ke_id, kwe_kurzname, kwe_name)
          values
          (kwe_seq.nextval, null, '298_9',v_ke_id, 'T�tigwerden von Spezialisten (auch aus dem Ausland)', null) returning kwe_id into v_kwe_id;
        insert into KATALOGW_CRIME_KATALOGW_EXTERN
          (kwckwe_kat_id, kwckwe_ke_id, kwckwe_katw_id, kwckwe_kwe_id, kwckwe_kcke_id)
          values
          (v_kat_id, v_ke_id, v_katw_id, v_kwe_id, v_kcke_id);
        
