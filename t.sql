declare
  tp_id   number;
  tanr_id number;
  tha_id  number;
  anschlussnr varchar2(32 char);
begin
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170558', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dashawn Watsica DVM') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cassandra', tp_id, 'Reprehenderit facere cum corporis occaecati. Omnis assumenda ut id molestiae. Quia et sint dolores voluptas. Aspernatur perspiciatis quibusdam numquam. Est necessitatibus vel voluptas repellendus. Veniam enim et.', 'Reprehenderit facere cum corporis occaecati. Omnis assumenda ut id molestiae. Quia et sint dolores voluptas. Aspernatur perspiciatis quibusdam numquam. Est necessitatibus vel voluptas repellendus. Veniam enim et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '322.476.6881';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220170450', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dahlia Medhurst') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Darion', tp_id, 'Et mollitia a sed consequuntur necessitatibus et impedit. Atque aut sint numquam voluptatem sed qui harum. Quam nesciunt consequatur sed corporis ex dolorem dolore. Repudiandae aut laudantium sed natus et.', 'Et mollitia a sed consequuntur necessitatibus et impedit. Atque aut sint numquam voluptatem sed qui harum. Quam nesciunt consequatur sed corporis ex dolorem dolore. Repudiandae aut laudantium sed natus et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '337.338.1050';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170313', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Evan D''Amore') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Fabiola', tp_id, 'Aut sit provident voluptas. Voluptates quis non aut assumenda. Quia cum adipisci. Cum beatae dolore aut quia quibusdam illum. Doloribus et non alias qui ea et.', 'Aut sit provident voluptas. Voluptates quis non aut assumenda. Quia cum adipisci. Cum beatae dolore aut quia quibusdam illum. Doloribus et non alias qui ea et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-136-362-3082 x922';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120172328', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ron Williamson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Nolan', tp_id, 'Sit quas voluptates in ut voluptatum enim sint. Qui doloremque et consectetur inventore omnis maxime et. Aut accusamus amet dolorem. Temporibus perspiciatis quo earum consectetur omnis voluptas. Fuga voluptas quia incidunt soluta officia. Minima est omnis.', 'Sit quas voluptates in ut voluptatum enim sint. Qui doloremque et consectetur inventore omnis maxime et. Aut accusamus amet dolorem. Temporibus perspiciatis quo earum consectetur omnis voluptas. Fuga voluptas quia incidunt soluta officia. Minima est omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '182-475-9728 x8903';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170955', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Myriam Gibson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cody', tp_id, 'Reprehenderit cupiditate amet dolorem ut saepe. Perferendis eaque illum facilis ratione voluptas et sed. Et debitis ea sint. Fuga est in autem consequatur accusantium voluptates dolor. Fugiat debitis doloremque et ea amet itaque. Voluptatem temporibus sit et odio esse.', 'Reprehenderit cupiditate amet dolorem ut saepe. Perferendis eaque illum facilis ratione voluptas et sed. Et debitis ea sint. Fuga est in autem consequatur accusantium voluptates dolor. Fugiat debitis doloremque et ea amet itaque. Voluptatem temporibus sit et odio esse.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-319-230-6337 x525';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120170127', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Gerson Bahringer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brando', tp_id, 'Consequatur cupiditate placeat. Facilis facere similique enim eaque. A ut rerum et cum. Sint aut et neque similique sit sit.', 'Consequatur cupiditate placeat. Facilis facere similique enim eaque. A ut rerum et cum. Sint aut et neque similique sit sit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '594-492-3178 x298';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120172240', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Celestine White') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lura', tp_id, 'Voluptatem velit alias dolorem quia et. Possimus suscipit consectetur est labore numquam similique. Eum inventore soluta est reprehenderit voluptatibus. Sapiente itaque error dolorem ut veritatis.', 'Voluptatem velit alias dolorem quia et. Possimus suscipit consectetur est labore numquam similique. Eum inventore soluta est reprehenderit voluptatibus. Sapiente itaque error dolorem ut veritatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '646.206.9352';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170058', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Luis Blick') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jaylin', tp_id, 'Unde quia quia placeat accusamus et. Magnam quam molestias fuga ut soluta quia. Libero a est quo magni quia temporibus. Fugit dolores dolorem tempora.', 'Unde quia quia placeat accusamus et. Magnam quam molestias fuga ut soluta quia. Libero a est quo magni quia temporibus. Fugit dolores dolorem tempora.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-196-731-1958';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220170121', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Xander VonRueden') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Daphne', tp_id, 'Corporis omnis hic at quos. Unde rerum ut odit possimus molestias. Culpa et error quia aperiam iusto. Voluptas fuga cumque nihil. Officia blanditiis quasi dolores cumque architecto magnam.', 'Corporis omnis hic at quos. Unde rerum ut odit possimus molestias. Culpa et error quia aperiam iusto. Voluptas fuga cumque nihil. Officia blanditiis quasi dolores cumque architecto magnam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '910-986-7775';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120171738', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ursula Ortiz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elmore', tp_id, 'Sed aut asperiores. Eum repellat illo cum eligendi. Omnis autem explicabo eligendi. Accusantium reprehenderit dolorem atque et. Quis rem deserunt facere et.', 'Sed aut asperiores. Eum repellat illo cum eligendi. Omnis autem explicabo eligendi. Accusantium reprehenderit dolorem atque et. Quis rem deserunt facere et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '229-346-4556 x93876';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170114', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Nathan Murazik') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Blair', tp_id, 'Occaecati voluptas est veritatis architecto quia dicta. Fuga reiciendis non sunt soluta illum autem. Velit blanditiis enim vero necessitatibus. Atque reprehenderit nobis quam adipisci nisi.', 'Occaecati voluptas est veritatis architecto quia dicta. Fuga reiciendis non sunt soluta illum autem. Velit blanditiis enim vero necessitatibus. Atque reprehenderit nobis quam adipisci nisi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '278.894.9579 x61877';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120171211', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lori Konopelski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kelsie', tp_id, 'Ratione eligendi non assumenda eum. Aliquam quisquam et tempore voluptatem. Aut optio tenetur sint voluptatibus sapiente similique. Magni modi rem et id est. Mollitia exercitationem sit possimus.', 'Ratione eligendi non assumenda eum. Aliquam quisquam et tempore voluptatem. Aut optio tenetur sint voluptatibus sapiente similique. Magni modi rem et id est. Mollitia exercitationem sit possimus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '370-548-4840 x67615';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120172041', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Frank Jast') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Eusebio', tp_id, 'Exercitationem qui voluptas est omnis nihil. Aut veritatis sint qui excepturi sed. Repudiandae vel ullam officiis. Earum natus sequi et. Dolore modi labore ex inventore omnis.', 'Exercitationem qui voluptas est omnis nihil. Aut veritatis sint qui excepturi sed. Repudiandae vel ullam officiis. Earum natus sequi et. Dolore modi labore ex inventore omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '910.134.0775';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171054', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cloyd Price') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Claudie', tp_id, 'Amet nihil ex atque unde quis hic quia. Officiis velit assumenda natus magni et dolor. Hic quas provident rerum repudiandae doloribus est aperiam. Temporibus et nesciunt velit.', 'Amet nihil ex atque unde quis hic quia. Officiis velit assumenda natus magni et dolor. Hic quas provident rerum repudiandae doloribus est aperiam. Temporibus et nesciunt velit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(447) 476-1799 x39374';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171643', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Brielle Davis') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Raina', tp_id, 'Necessitatibus aut qui. Sunt animi praesentium dolores reiciendis id accusamus. Rerum omnis porro pariatur eos ipsum dicta explicabo. Facere aut odio illo. Et aliquam possimus error non harum.', 'Necessitatibus aut qui. Sunt animi praesentium dolores reiciendis id accusamus. Rerum omnis porro pariatur eos ipsum dicta explicabo. Facere aut odio illo. Et aliquam possimus error non harum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '180-262-7236 x2205';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171101', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Presley Deckow') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Myles', tp_id, 'Consequatur illo a. Laudantium temporibus sunt. Sunt exercitationem magni ipsum pariatur omnis eum. In similique assumenda illo accusamus nam nesciunt nobis. Asperiores quo enim et deleniti ipsam id.', 'Consequatur illo a. Laudantium temporibus sunt. Sunt exercitationem magni ipsum pariatur omnis eum. In similique assumenda illo accusamus nam nesciunt nobis. Asperiores quo enim et deleniti ipsam id.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '424-084-0437 x88901';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220170818', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Allene Robel') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lenore', tp_id, 'Aperiam non distinctio cum velit id. Voluptas voluptate aspernatur. Est cum vel minima eius eos voluptatem. Fugit assumenda aut illum harum iste asperiores aliquam. In mollitia ex.', 'Aperiam non distinctio cum velit id. Voluptas voluptate aspernatur. Est cum vel minima eius eos voluptatem. Fugit assumenda aut illum harum iste asperiores aliquam. In mollitia ex.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '536.125.9406 x73410';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120172133', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Maxie Kris') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Colt', tp_id, 'Eum occaecati repudiandae ut qui et repellat. Nulla ipsa dolor cum. Exercitationem earum occaecati sunt molestiae. Eum deserunt rerum.', 'Eum occaecati repudiandae ut qui et repellat. Nulla ipsa dolor cum. Exercitationem earum occaecati sunt molestiae. Eum deserunt rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '389.835.6783 x204';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120170710', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kelton Nienow') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lilla', tp_id, 'Et enim est similique quia eum cupiditate ut. Consequatur et nemo dolorem. Provident temporibus voluptas rem nulla. Vitae omnis possimus laboriosam voluptatum consequatur sunt.', 'Et enim est similique quia eum cupiditate ut. Consequatur et nemo dolorem. Provident temporibus voluptas rem nulla. Vitae omnis possimus laboriosam voluptatum consequatur sunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '444.527.3389 x132';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120171344', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Wayne Rolfson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Demetrius', tp_id, 'Ex tempore eum nemo consequatur. Autem consequatur adipisci velit qui nesciunt. Reprehenderit itaque expedita. Error sunt accusantium blanditiis. Aliquid voluptas laboriosam ullam.', 'Ex tempore eum nemo consequatur. Autem consequatur adipisci velit qui nesciunt. Reprehenderit itaque expedita. Error sunt accusantium blanditiis. Aliquid voluptas laboriosam ullam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '189-399-8693 x28902';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171743', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Janice Johnston') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lewis', tp_id, 'Aut delectus facilis soluta aliquam. Porro ut aut. Voluptas iusto eveniet ut facilis sint reprehenderit. Soluta id molestiae aliquid.', 'Aut delectus facilis soluta aliquam. Porro ut aut. Voluptas iusto eveniet ut facilis sint reprehenderit. Soluta id molestiae aliquid.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-363-663-2515';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120171325', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Roberta Ondricka') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tyler', tp_id, 'Nesciunt velit quasi rerum et qui facere. Non sunt est dolorem. Adipisci sit quidem earum enim eius quam et. Autem quod sed ut. Quos quae accusamus quia voluptatum quibusdam. Harum corrupti sunt facilis ad est.', 'Nesciunt velit quasi rerum et qui facere. Non sunt est dolorem. Adipisci sit quidem earum enim eius quam et. Autem quod sed ut. Quos quae accusamus quia voluptatum quibusdam. Harum corrupti sunt facilis ad est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-542-202-1070 x1956';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171028', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kieran Jenkins') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dandre', tp_id, 'Ea quia illo neque nemo culpa esse rerum. Dolorum quae hic similique iure corporis. Qui necessitatibus molestias doloribus ut et placeat pariatur. Expedita vero cupiditate eos dolorum dolores. Qui expedita fuga.', 'Ea quia illo neque nemo culpa esse rerum. Dolorum quae hic similique iure corporis. Qui necessitatibus molestias doloribus ut et placeat pariatur. Expedita vero cupiditate eos dolorum dolores. Qui expedita fuga.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '438-040-8633 x25871';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120170821', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Noelia Hickle') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tony', tp_id, 'Libero aliquam dignissimos soluta in placeat dolorum sunt. Iste et mollitia facilis quam nesciunt autem debitis. Laborum modi incidunt ipsum. Vel quam consequatur placeat dolores et. Iusto voluptas distinctio incidunt sit ipsum est dolores.', 'Libero aliquam dignissimos soluta in placeat dolorum sunt. Iste et mollitia facilis quam nesciunt autem debitis. Laborum modi incidunt ipsum. Vel quam consequatur placeat dolores et. Iusto voluptas distinctio incidunt sit ipsum est dolores.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(811) 851-7408 x834';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171432', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Hannah Mertz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tomasa', tp_id, 'Dolor dolore molestiae. Repellendus suscipit saepe similique. Voluptas eaque qui dolorem hic tempora ab. Culpa aperiam impedit modi qui nobis placeat.', 'Dolor dolore molestiae. Repellendus suscipit saepe similique. Voluptas eaque qui dolorem hic tempora ab. Culpa aperiam impedit modi qui nobis placeat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(558) 827-6977';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120171204', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vaughn Hahn V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Nash', tp_id, 'Eos consequatur magnam. Iusto nobis maiores nihil sed sunt. Alias et est dolor consequuntur sint ipsum. In id sed asperiores soluta et nesciunt accusantium. Ut a distinctio.', 'Eos consequatur magnam. Iusto nobis maiores nihil sed sunt. Alias et est dolor consequuntur sint ipsum. In id sed asperiores soluta et nesciunt accusantium. Ut a distinctio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(545) 759-2073 x104';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170218', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Camron Sanford') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Verlie', tp_id, 'Velit maxime commodi. Vitae neque reprehenderit cumque. Voluptas expedita repudiandae error. Ducimus perferendis eos. Et sapiente consequatur et recusandae cum. Quo consequatur saepe.', 'Velit maxime commodi. Vitae neque reprehenderit cumque. Voluptas expedita repudiandae error. Ducimus perferendis eos. Et sapiente consequatur et recusandae cum. Quo consequatur saepe.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-879-719-9054 x217';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171924', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Foster Kuhn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elenor', tp_id, 'Iure suscipit ex saepe. Nihil amet doloremque nihil occaecati ea praesentium. Quisquam quia vitae facere accusamus consequatur. Suscipit et autem harum in.', 'Iure suscipit ex saepe. Nihil amet doloremque nihil occaecati ea praesentium. Quisquam quia vitae facere accusamus consequatur. Suscipit et autem harum in.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '844-894-0680 x928';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171032', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Easter Veum') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Aubrey', tp_id, 'Voluptas blanditiis est sint ut deleniti voluptatem qui. Nesciunt aliquid in et quia. Enim dolor corrupti quam aut. Quis placeat aut sit enim suscipit qui.', 'Voluptas blanditiis est sint ut deleniti voluptatem qui. Nesciunt aliquid in et quia. Enim dolor corrupti quam aut. Quis placeat aut sit enim suscipit qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '370.890.7037';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170510', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Heather Sauer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dorian', tp_id, 'Ex minima est cum impedit suscipit iste. Impedit qui consequuntur beatae aut. Deserunt rerum dolorum ratione itaque facere et. Eum sint reiciendis expedita dolore optio assumenda. Cupiditate aliquid soluta esse.', 'Ex minima est cum impedit suscipit iste. Impedit qui consequuntur beatae aut. Deserunt rerum dolorum ratione itaque facere et. Eum sint reiciendis expedita dolore optio assumenda. Cupiditate aliquid soluta esse.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(552) 547-8435';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120172107', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ilene Harris Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jedediah', tp_id, 'Est velit fugiat ullam accusantium consequatur veritatis sit. Cupiditate ex nobis voluptas. Enim dignissimos earum aut. Minima molestiae ipsam voluptatum eos eveniet molestiae consequatur. Vel rerum reiciendis delectus maiores id voluptatum.', 'Est velit fugiat ullam accusantium consequatur veritatis sit. Cupiditate ex nobis voluptas. Enim dignissimos earum aut. Minima molestiae ipsam voluptatum eos eveniet molestiae consequatur. Vel rerum reiciendis delectus maiores id voluptatum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '253.128.7612 x60632';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120171928', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Adrianna Ankunding') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Virgil', tp_id, 'Harum quas eligendi quae. Aspernatur voluptatem repellat fuga vel voluptates provident consequuntur. Repudiandae ut perferendis nulla nisi exercitationem quia consequatur. Ut eius ea ad voluptatibus. Ut et vel consectetur aliquid. Qui fugiat quas.', 'Harum quas eligendi quae. Aspernatur voluptatem repellat fuga vel voluptates provident consequuntur. Repudiandae ut perferendis nulla nisi exercitationem quia consequatur. Ut eius ea ad voluptatibus. Ut et vel consectetur aliquid. Qui fugiat quas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(147) 730-7041 x7516';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120171925', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Immanuel Jacobson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Maggie', tp_id, 'Rerum omnis et deserunt deleniti odit dolore totam. Corrupti vel beatae quidem sed distinctio. Quas ab quisquam. Enim similique odio labore qui temporibus adipisci commodi. Nihil expedita qui ipsa.', 'Rerum omnis et deserunt deleniti odit dolore totam. Corrupti vel beatae quidem sed distinctio. Quas ab quisquam. Enim similique odio labore qui temporibus adipisci commodi. Nihil expedita qui ipsa.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '647-878-3182 x5347';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171906', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Otha Mraz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Darius', tp_id, 'Maxime magni et dicta. Corrupti qui blanditiis quis ut omnis praesentium repellendus. Ut sed ipsam modi sed. Ut ipsam odit voluptate sint maxime. Placeat ad ut quae cumque. Dolorem voluptas recusandae beatae asperiores iusto dolores.', 'Maxime magni et dicta. Corrupti qui blanditiis quis ut omnis praesentium repellendus. Ut sed ipsam modi sed. Ut ipsam odit voluptate sint maxime. Placeat ad ut quae cumque. Dolorem voluptas recusandae beatae asperiores iusto dolores.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '732.937.4149';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120172352', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Skylar Jakubowski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Davin', tp_id, 'Repellat quia laborum atque. Cum voluptatem quia iusto. Non accusamus in quia at. Et expedita eum dolore maxime. Cumque quas omnis perferendis minima.', 'Repellat quia laborum atque. Cum voluptatem quia iusto. Non accusamus in quia at. Et expedita eum dolore maxime. Cumque quas omnis perferendis minima.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '258.024.0876 x0253';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171409', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bruce Streich Jr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bridie', tp_id, 'Voluptas et nostrum. Voluptatibus inventore quam accusantium. Dolorem quo nemo rerum totam. Facilis nemo tempore esse quae incidunt provident. Maxime veritatis saepe ipsa hic.', 'Voluptas et nostrum. Voluptatibus inventore quam accusantium. Dolorem quo nemo rerum totam. Facilis nemo tempore esse quae incidunt provident. Maxime veritatis saepe ipsa hic.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '308.304.7841';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120170046', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dell Wyman III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Velda', tp_id, 'Eos hic praesentium quibusdam quae porro. Aut voluptatum autem. Et nam ipsum. Sit ipsa molestiae est et inventore magnam culpa. Culpa facilis quidem. Amet sunt esse libero voluptatibus.', 'Eos hic praesentium quibusdam quae porro. Aut voluptatum autem. Et nam ipsum. Sit ipsa molestiae est et inventore magnam culpa. Culpa facilis quidem. Amet sunt esse libero voluptatibus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-595-551-0160';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171658', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Enos Schuster DVM') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Furman', tp_id, 'Ipsa enim nam reprehenderit sint veritatis consectetur. Cum eveniet natus ut id similique necessitatibus maxime. Et at omnis cum atque. Reprehenderit labore alias rerum.', 'Ipsa enim nam reprehenderit sint veritatis consectetur. Cum eveniet natus ut id similique necessitatibus maxime. Et at omnis cum atque. Reprehenderit labore alias rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-471-954-5218';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171753', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Irwin Hilll') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Deron', tp_id, 'Qui repellendus sapiente eos suscipit hic quidem. Quas quia et dicta rerum quasi. Debitis neque illo aut vel reiciendis. Et nam quia explicabo suscipit. Nostrum quam quia vero odit id pariatur. Eaque ea voluptatibus.', 'Qui repellendus sapiente eos suscipit hic quidem. Quas quia et dicta rerum quasi. Debitis neque illo aut vel reiciendis. Et nam quia explicabo suscipit. Nostrum quam quia vero odit id pariatur. Eaque ea voluptatibus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(165) 738-5172';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171052', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Herman Blanda') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marcos', tp_id, 'Eveniet non et et ipsam voluptates est nesciunt. Nostrum veritatis magni qui accusantium voluptatem quis expedita. Ut itaque eos aut magni consequatur quam. Vero voluptatibus harum earum.', 'Eveniet non et et ipsam voluptates est nesciunt. Nostrum veritatis magni qui accusantium voluptatem quis expedita. Ut itaque eos aut magni consequatur quam. Vero voluptatibus harum earum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '588-592-7709 x47135';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171908', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Anjali Moore') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Estrella', tp_id, 'Eos eius impedit minima sed sed illo. Laudantium aut sapiente quos porro beatae a odit. Ut autem ipsum sit. Quibusdam culpa labore dolores dolorem.', 'Eos eius impedit minima sed sed illo. Laudantium aut sapiente quos porro beatae a odit. Ut autem ipsum sit. Quibusdam culpa labore dolores dolorem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '470-139-8201 x9653';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170747', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jacinthe Feest') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Nils', tp_id, 'Omnis vero quae voluptate qui sit ipsam dolores. Officiis est iure explicabo quo dolores voluptatum. Similique et voluptatum. Veritatis reiciendis corrupti officia assumenda. Laudantium qui praesentium quidem adipisci recusandae. Rem libero sit est esse vero beatae.', 'Omnis vero quae voluptate qui sit ipsam dolores. Officiis est iure explicabo quo dolores voluptatum. Similique et voluptatum. Veritatis reiciendis corrupti officia assumenda. Laudantium qui praesentium quidem adipisci recusandae. Rem libero sit est esse vero beatae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '378-631-1054';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120170005', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jeramy Cremin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Allen', tp_id, 'Repudiandae sed tempora eligendi consequatur molestias. Deleniti molestias in incidunt odio mollitia quaerat consequatur. Voluptate aut consequatur quia. Aliquam et numquam aut molestias. Consequatur ab commodi eos dolores. Et nostrum ut corrupti et.', 'Repudiandae sed tempora eligendi consequatur molestias. Deleniti molestias in incidunt odio mollitia quaerat consequatur. Voluptate aut consequatur quia. Aliquam et numquam aut molestias. Consequatur ab commodi eos dolores. Et nostrum ut corrupti et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '185.684.4538 x196';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170452', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Celia Heller') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Pedro', tp_id, 'Ducimus beatae adipisci eum omnis nisi. Explicabo quis eum. Et quisquam minus pariatur. Et et odio dolorem.', 'Ducimus beatae adipisci eum omnis nisi. Explicabo quis eum. Et quisquam minus pariatur. Et et odio dolorem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(537) 254-8644 x77502';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120170823', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Schuyler Kovacek') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Asa', tp_id, 'Earum ex amet ratione sunt. Quibusdam hic et. Enim voluptatibus ut et vel minus. Minima quibusdam ut aut perferendis vel architecto molestias. Excepturi voluptatum officiis ut.', 'Earum ex amet ratione sunt. Quibusdam hic et. Enim voluptatibus ut et vel minus. Minima quibusdam ut aut perferendis vel architecto molestias. Excepturi voluptatum officiis ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(160) 009-2750';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220170007', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Soledad Larson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Consuelo', tp_id, 'Et architecto in in nemo incidunt. Quod aperiam voluptatem dolorum. Libero voluptate laborum suscipit et adipisci repudiandae quam. Corrupti vel consequatur. Rem iure provident sint distinctio.', 'Et architecto in in nemo incidunt. Quod aperiam voluptatem dolorum. Libero voluptate laborum suscipit et adipisci repudiandae quam. Corrupti vel consequatur. Rem iure provident sint distinctio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-736-383-9960';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120170152', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Catharine Walter') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kellie', tp_id, 'Exercitationem qui et non accusamus odio. Modi deserunt voluptas distinctio molestias sit dolor exercitationem. Consectetur commodi est. Aut veniam ad maxime officia qui. Deleniti ut nulla.', 'Exercitationem qui et non accusamus odio. Modi deserunt voluptas distinctio molestias sit dolor exercitationem. Consectetur commodi est. Aut veniam ad maxime officia qui. Deleniti ut nulla.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '403-431-5552 x171';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171150', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Caden Skiles V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brendon', tp_id, 'Voluptates similique voluptas atque aut porro quis ipsum. Hic voluptatem vitae. Repellendus nemo quo. Saepe ducimus aspernatur voluptas repellendus dolorem aliquid quo. Magnam placeat corporis tempora.', 'Voluptates similique voluptas atque aut porro quis ipsum. Hic voluptatem vitae. Repellendus nemo quo. Saepe ducimus aspernatur voluptas repellendus dolorem aliquid quo. Magnam placeat corporis tempora.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '523-354-6927 x754';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171819', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ramona Lakin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kelvin', tp_id, 'Dolorem et libero quo. Error dicta cumque debitis. Aut eum qui sequi itaque excepturi. Omnis non accusamus accusantium rerum nihil odio sunt. Quo est provident quia rerum.', 'Dolorem et libero quo. Error dicta cumque debitis. Aut eum qui sequi itaque excepturi. Omnis non accusamus accusantium rerum nihil odio sunt. Quo est provident quia rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(637) 061-0154 x72344';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220170809', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dahlia O''Hara IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Estefania', tp_id, 'Minus nisi sunt tempora labore. Tempora et qui dolorem nisi. Quo vel corrupti in. Aut eius ex autem nostrum excepturi velit ad. Quisquam fugiat quia inventore modi est laudantium.', 'Minus nisi sunt tempora labore. Tempora et qui dolorem nisi. Quo vel corrupti in. Aut eius ex autem nostrum excepturi velit ad. Quisquam fugiat quia inventore modi est laudantium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(444) 369-1438';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120170004', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Krystina Schmitt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Roderick', tp_id, 'Nulla repudiandae tempora ea temporibus deserunt. Omnis quibusdam dignissimos in voluptatem ullam omnis. Quaerat iure dolore. Ut asperiores mollitia id itaque quos.', 'Nulla repudiandae tempora ea temporibus deserunt. Omnis quibusdam dignissimos in voluptatem ullam omnis. Quaerat iure dolore. Ut asperiores mollitia id itaque quos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-823-812-9823 x80759';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120172338', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Toby Durgan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Chet', tp_id, 'Velit quia nisi deserunt minus nulla. Voluptas id fugiat. Id doloremque distinctio velit praesentium dignissimos. Corporis impedit sed consequatur dolor aut.', 'Velit quia nisi deserunt minus nulla. Voluptas id fugiat. Id doloremque distinctio velit praesentium dignissimos. Corporis impedit sed consequatur dolor aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-245-018-4765';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171443', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Axel Waelchi') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Danny', tp_id, 'Laboriosam unde a tempora. Nam voluptatum qui saepe numquam dolores unde quo. Ut cumque sequi excepturi. Tempora sint rerum dolorum porro ut.', 'Laboriosam unde a tempora. Nam voluptatum qui saepe numquam dolores unde quo. Ut cumque sequi excepturi. Tempora sint rerum dolorum porro ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-393-521-9875';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220171842', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Leif Wolf') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Nathen', tp_id, 'Libero suscipit accusantium. Dolorum consequatur repellat ut aut quidem consectetur molestias. Minima officiis rerum fugit rerum. Harum praesentium eum assumenda exercitationem dolorum omnis.', 'Libero suscipit accusantium. Dolorum consequatur repellat ut aut quidem consectetur molestias. Minima officiis rerum fugit rerum. Harum praesentium eum assumenda exercitationem dolorum omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-317-519-2173';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170309', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Ollie Christiansen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'America', tp_id, 'Iure non provident. Libero modi voluptatem hic nemo iste qui. Sed aut cumque impedit nisi ut facilis rerum. Doloremque ex impedit ducimus.', 'Iure non provident. Libero modi voluptatem hic nemo iste qui. Sed aut cumque impedit nisi ut facilis rerum. Doloremque ex impedit ducimus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '635.825.5919 x0605';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171637', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Curt Schumm V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alysha', tp_id, 'Sit laborum dicta rerum dolore consequatur. Laboriosam consequatur molestiae. Molestiae aspernatur accusamus corrupti placeat. Maiores et id deleniti tenetur. Tempore velit praesentium impedit facilis ratione.', 'Sit laborum dicta rerum dolore consequatur. Laboriosam consequatur molestiae. Molestiae aspernatur accusamus corrupti placeat. Maiores et id deleniti tenetur. Tempore velit praesentium impedit facilis ratione.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-657-240-5469 x363';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170324', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Valentin Romaguera') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lysanne', tp_id, 'Voluptate quas ducimus iste ipsam aliquid. Assumenda dolore fuga quas et. Porro enim dignissimos debitis voluptas suscipit. Possimus suscipit nemo.', 'Voluptate quas ducimus iste ipsam aliquid. Assumenda dolore fuga quas et. Porro enim dignissimos debitis voluptas suscipit. Possimus suscipit nemo.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(175) 373-0309';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171618', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Danielle Romaguera') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carmelo', tp_id, 'Officiis adipisci rerum molestiae. Aut et voluptatem et accusantium enim impedit. Fugiat quod quos cupiditate assumenda voluptatem. Corporis quo porro omnis dolorem. Neque sit nihil.', 'Officiis adipisci rerum molestiae. Aut et voluptatem et accusantium enim impedit. Fugiat quod quos cupiditate assumenda voluptatem. Corporis quo porro omnis dolorem. Neque sit nihil.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '670-895-9432';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170001', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Destiny Osinski V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jacques', tp_id, 'Incidunt sunt atque modi quia aliquid. Corporis mollitia ut rerum. Velit recusandae nihil rerum debitis. Sunt adipisci est laudantium.', 'Incidunt sunt atque modi quia aliquid. Corporis mollitia ut rerum. Velit recusandae nihil rerum debitis. Sunt adipisci est laudantium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-954-532-8424';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171852', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vilma Gerlach PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lucienne', tp_id, 'Quisquam doloribus consequatur est aliquid dolor. Placeat accusamus tempore. Ad culpa numquam molestias. Eaque est sunt sint optio eius natus. Exercitationem fuga at necessitatibus reiciendis doloribus dignissimos quis. Veritatis non assumenda incidunt quibusdam unde.', 'Quisquam doloribus consequatur est aliquid dolor. Placeat accusamus tempore. Ad culpa numquam molestias. Eaque est sunt sint optio eius natus. Exercitationem fuga at necessitatibus reiciendis doloribus dignissimos quis. Veritatis non assumenda incidunt quibusdam unde.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '385.179.5296';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171020', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sabryna Bailey Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Abby', tp_id, 'Neque officiis unde doloremque accusantium suscipit fugit commodi. Assumenda quaerat voluptates dolores laborum et. Odit non iusto ratione. Non ipsum iusto.', 'Neque officiis unde doloremque accusantium suscipit fugit commodi. Assumenda quaerat voluptates dolores laborum et. Odit non iusto ratione. Non ipsum iusto.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '742-571-7155 x318';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220171549', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Karli Purdy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lera', tp_id, 'Eius repudiandae illum nam consequatur et alias. Nobis quis doloremque voluptas. Et sint nihil deserunt architecto. Sed nobis blanditiis qui incidunt voluptatem. Facere dolor illo non.', 'Eius repudiandae illum nam consequatur et alias. Nobis quis doloremque voluptas. Et sint nihil deserunt architecto. Sed nobis blanditiis qui incidunt voluptatem. Facere dolor illo non.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-783-835-0074 x57114';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170755', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Malachi Streich') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Maximo', tp_id, 'Saepe aut sequi ut ratione et exercitationem. Omnis rerum neque et. Quaerat repellendus dolorem totam ullam doloribus officia. Quis doloribus quia. Eos itaque distinctio facere rem architecto. Harum voluptates sunt corporis neque adipisci et sit.', 'Saepe aut sequi ut ratione et exercitationem. Omnis rerum neque et. Quaerat repellendus dolorem totam ullam doloribus officia. Quis doloribus quia. Eos itaque distinctio facere rem architecto. Harum voluptates sunt corporis neque adipisci et sit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '933.000.6251 x53868';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171245', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ervin Hermiston') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Juana', tp_id, 'Temporibus rerum ut ea error nihil eum. Officiis autem natus. Saepe eum illo. Repellendus et beatae aspernatur fugiat. Qui et aut.', 'Temporibus rerum ut ea error nihil eum. Officiis autem natus. Saepe eum illo. Repellendus et beatae aspernatur fugiat. Qui et aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-469-792-4965 x48178';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170137', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Litzy Kreiger MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kade', tp_id, 'Porro est consequatur nam quis repudiandae officiis mollitia. Assumenda laboriosam cum. Magnam soluta aspernatur est et amet animi vel. Quae reprehenderit et quos laudantium. Accusantium sed voluptas. Ex et in.', 'Porro est consequatur nam quis repudiandae officiis mollitia. Assumenda laboriosam cum. Magnam soluta aspernatur est et amet animi vel. Quae reprehenderit et quos laudantium. Accusantium sed voluptas. Ex et in.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '151.825.4949 x966';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120170312', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rupert Mills') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Candelario', tp_id, 'Dolor non quia laboriosam est amet sint expedita. Occaecati optio nesciunt nemo vel cumque. Tenetur cum vel nobis consectetur eum culpa quia. Molestias non hic. Aliquid aut amet in aspernatur eaque.', 'Dolor non quia laboriosam est amet sint expedita. Occaecati optio nesciunt nemo vel cumque. Tenetur cum vel nobis consectetur eum culpa quia. Molestias non hic. Aliquid aut amet in aspernatur eaque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-236-364-3110 x91003';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220171710', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jett Dietrich') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Hattie', tp_id, 'Sapiente dolorum reiciendis. Eos qui voluptate exercitationem. Debitis omnis molestias laudantium et aut. Dolorem repellendus ratione assumenda qui a sed praesentium. Magni voluptatum atque voluptas qui libero.', 'Sapiente dolorum reiciendis. Eos qui voluptate exercitationem. Debitis omnis molestias laudantium et aut. Dolorem repellendus ratione assumenda qui a sed praesentium. Magni voluptatum atque voluptas qui libero.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(168) 025-7399 x40477';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120172237', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ana Wehner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vinnie', tp_id, 'Commodi quasi magni recusandae impedit distinctio quod. Fugit quidem enim et ipsa distinctio. Illo velit eos unde hic. Veritatis non velit ut occaecati omnis.', 'Commodi quasi magni recusandae impedit distinctio quod. Fugit quidem enim et ipsa distinctio. Illo velit eos unde hic. Veritatis non velit ut occaecati omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(266) 925-5049';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171400', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Tavares Kessler') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Joannie', tp_id, 'Et at aut sunt qui ut. Nihil quo et. Eum dolorem nisi qui. Ratione minus enim et nihil consequatur nobis. Nemo velit nam.', 'Et at aut sunt qui ut. Nihil quo et. Eum dolorem nisi qui. Ratione minus enim et nihil consequatur nobis. Nemo velit nam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(655) 109-6959 x941';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120170152', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Edwardo Waters') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kariane', tp_id, 'Et voluptas exercitationem voluptatem quia. Doloribus perspiciatis quaerat quod porro non nemo. Quibusdam id dolorem ullam dicta et. Nesciunt aperiam quam sapiente est quod dolores. Occaecati omnis labore sequi adipisci. Mollitia reprehenderit praesentium sed omnis.', 'Et voluptas exercitationem voluptatem quia. Doloribus perspiciatis quaerat quod porro non nemo. Quibusdam id dolorem ullam dicta et. Nesciunt aperiam quam sapiente est quod dolores. Occaecati omnis labore sequi adipisci. Mollitia reprehenderit praesentium sed omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '432.409.2772 x8051';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120172122', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Aglae Schmitt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Asia', tp_id, 'Non sed aperiam quis ut molestias numquam ullam. Harum tempore porro velit aut quia. Quia et accusantium magni sunt. Ea dignissimos omnis voluptatem voluptatem quia. Autem ad doloremque non hic. Non sit facilis.', 'Non sed aperiam quis ut molestias numquam ullam. Harum tempore porro velit aut quia. Quia et accusantium magni sunt. Ea dignissimos omnis voluptatem voluptatem quia. Autem ad doloremque non hic. Non sit facilis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '426-786-4506 x427';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170653', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Stephania Larson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Samanta', tp_id, 'Quia hic sequi modi molestias recusandae aspernatur. Molestias dicta esse. Quia saepe veritatis fugiat nihil optio deleniti ipsa. Eveniet rerum fugit sed in labore ducimus. Id laboriosam odio beatae vel aliquam rem.', 'Quia hic sequi modi molestias recusandae aspernatur. Molestias dicta esse. Quia saepe veritatis fugiat nihil optio deleniti ipsa. Eveniet rerum fugit sed in labore ducimus. Id laboriosam odio beatae vel aliquam rem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '228.993.8154 x110';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170108', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Halle Roberts') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ilene', tp_id, 'Sit aut est. Magnam quis in doloribus. Unde facere ducimus. Odio consectetur at voluptas praesentium.', 'Sit aut est. Magnam quis in doloribus. Unde facere ducimus. Odio consectetur at voluptas praesentium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '571.624.8031 x58778';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220170843', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mason Jacobs') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Frederic', tp_id, 'Velit minus consequatur ab. Consequatur quo mollitia accusamus et ea a. Qui esse quam sunt temporibus accusantium minima. Et consequatur natus ut reprehenderit.', 'Velit minus consequatur ab. Consequatur quo mollitia accusamus et ea a. Qui esse quam sunt temporibus accusantium minima. Et consequatur natus ut reprehenderit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-792-439-7035 x081';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170711', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Leilani Dietrich I') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jose', tp_id, 'Quae blanditiis et. Beatae doloremque fuga in et vitae quos. Omnis ea rerum itaque voluptatem sunt et voluptatem. Dolorem in et cumque. Consequuntur et dolorem totam ipsa incidunt quia dolores. Aut qui ipsam.', 'Quae blanditiis et. Beatae doloremque fuga in et vitae quos. Omnis ea rerum itaque voluptatem sunt et voluptatem. Dolorem in et cumque. Consequuntur et dolorem totam ipsa incidunt quia dolores. Aut qui ipsam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '326-146-7565 x82563';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170401', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ruben Waelchi') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Friedrich', tp_id, 'Dolore ut a. Commodi voluptatem ipsam nam inventore saepe. Vel officia modi. Sit explicabo perferendis nemo quaerat sed.', 'Dolore ut a. Commodi voluptatem ipsam nam inventore saepe. Vel officia modi. Sit explicabo perferendis nemo quaerat sed.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(570) 278-6056 x5965';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220170003', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sonya Gutkowski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Noemie', tp_id, 'Ut in nihil commodi illo fugit. Tempore asperiores soluta et cumque corporis. Assumenda ratione rerum excepturi temporibus animi consectetur sed. Quod rerum ut error sit ducimus dolores. Omnis dolores praesentium.', 'Ut in nihil commodi illo fugit. Tempore asperiores soluta et cumque corporis. Assumenda ratione rerum excepturi temporibus animi consectetur sed. Quod rerum ut error sit ducimus dolores. Omnis dolores praesentium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '313-547-3855 x6218';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171344', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ana Reynolds') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Leanna', tp_id, 'Harum voluptatem aut nihil amet recusandae nesciunt. Dolores magnam suscipit. Sequi et et. Eum quaerat aperiam saepe maxime suscipit. Blanditiis quam id. Ut esse excepturi nihil accusamus totam ipsa.', 'Harum voluptatem aut nihil amet recusandae nesciunt. Dolores magnam suscipit. Sequi et et. Eum quaerat aperiam saepe maxime suscipit. Blanditiis quam id. Ut esse excepturi nihil accusamus totam ipsa.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '316.225.6681';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120170559', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Aiyana Runolfsson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Casandra', tp_id, 'Dignissimos et dolor. Ea eum et adipisci. Voluptatum minima similique sit molestiae praesentium. Similique reiciendis officia eligendi.', 'Dignissimos et dolor. Ea eum et adipisci. Voluptatum minima similique sit molestiae praesentium. Similique reiciendis officia eligendi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '720-924-6871';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171525', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dean Denesik') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jadon', tp_id, 'Facere quae qui. Est ipsam eos itaque officia. Iste quaerat non inventore. Nemo molestiae impedit enim ducimus. Quo molestias suscipit fugiat.', 'Facere quae qui. Est ipsam eos itaque officia. Iste quaerat non inventore. Nemo molestiae impedit enim ducimus. Quo molestias suscipit fugiat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '334-656-4584';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120170934', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Demetrius Moen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Laron', tp_id, 'Qui magnam sapiente aut. Voluptatibus dolores id aut voluptatum. Odio recusandae qui fugiat accusamus aliquam. Adipisci vel tenetur dignissimos. Perferendis aliquid ipsum earum suscipit voluptatem. Et nostrum molestiae culpa id tempora.', 'Qui magnam sapiente aut. Voluptatibus dolores id aut voluptatum. Odio recusandae qui fugiat accusamus aliquam. Adipisci vel tenetur dignissimos. Perferendis aliquid ipsum earum suscipit voluptatem. Et nostrum molestiae culpa id tempora.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '103-625-9115';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120170626', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bobby Kirlin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Christelle', tp_id, 'Inventore aut qui ea iusto odit facere. Nostrum perspiciatis eum et suscipit. Suscipit vero excepturi eius. Accusantium sit nobis et.', 'Inventore aut qui ea iusto odit facere. Nostrum perspiciatis eum et suscipit. Suscipit vero excepturi eius. Accusantium sit nobis et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-600-508-4463';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170445', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Emmie Murray') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lila', tp_id, 'Totam sapiente tempora enim laudantium odio quaerat. Tempora veritatis voluptate voluptas. Dolorem error ut suscipit quidem in reiciendis. Et quis voluptates.', 'Totam sapiente tempora enim laudantium odio quaerat. Tempora veritatis voluptate voluptas. Dolorem error ut suscipit quidem in reiciendis. Et quis voluptates.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-352-481-4872 x74947';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170655', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mathilde Boyle III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Verda', tp_id, 'Possimus non eos aut ullam adipisci. Minus explicabo nulla recusandae in. Atque autem est voluptatem quis. Voluptatibus quidem iste ea necessitatibus omnis quasi aspernatur. Velit totam labore quia nisi reiciendis dolores sunt.', 'Possimus non eos aut ullam adipisci. Minus explicabo nulla recusandae in. Atque autem est voluptatem quis. Voluptatibus quidem iste ea necessitatibus omnis quasi aspernatur. Velit totam labore quia nisi reiciendis dolores sunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '153.319.8024';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171522', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Daryl Marquardt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Loyal', tp_id, 'Cupiditate dolores a consequuntur consequatur est. Voluptatem error vero vitae commodi omnis nobis non. Ad eius blanditiis cupiditate aspernatur. Labore rerum deserunt nihil sed numquam corporis. Asperiores voluptatem eos et aliquam officiis facere. Modi sit et voluptatem ut.', 'Cupiditate dolores a consequuntur consequatur est. Voluptatem error vero vitae commodi omnis nobis non. Ad eius blanditiis cupiditate aspernatur. Labore rerum deserunt nihil sed numquam corporis. Asperiores voluptatem eos et aliquam officiis facere. Modi sit et voluptatem ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '231-480-3702 x43583';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171350', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ocie Cronin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Timothy', tp_id, 'Qui ea sunt ut porro illum. Enim hic modi tempore pariatur molestias repellat quasi. Officiis qui fuga voluptatem quos illum. Culpa accusantium illo explicabo dicta. Magni velit molestiae delectus recusandae iure consequuntur non.', 'Qui ea sunt ut porro illum. Enim hic modi tempore pariatur molestias repellat quasi. Officiis qui fuga voluptatem quos illum. Culpa accusantium illo explicabo dicta. Magni velit molestiae delectus recusandae iure consequuntur non.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(774) 793-3679 x186';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170355', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Chase Kuhlman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marlee', tp_id, 'Natus in ut error rerum quisquam. Sapiente id laudantium fuga aperiam recusandae repellat. Impedit dolorem ipsum pariatur laborum. Enim voluptatem omnis et quo accusamus. Eveniet natus non nihil molestiae quos sunt ducimus.', 'Natus in ut error rerum quisquam. Sapiente id laudantium fuga aperiam recusandae repellat. Impedit dolorem ipsum pariatur laborum. Enim voluptatem omnis et quo accusamus. Eveniet natus non nihil molestiae quos sunt ducimus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(957) 106-3305 x076';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120172203', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kacie Hane Jr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Darlene', tp_id, 'Et vel non culpa est qui a dicta. A voluptas neque et nostrum culpa ut. Ut aut corporis. Magni quia facilis cum ea sunt ut ut.', 'Et vel non culpa est qui a dicta. A voluptas neque et nostrum culpa ut. Ut aut corporis. Magni quia facilis cum ea sunt ut ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '222-194-3014 x4002';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120172309', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sabryna Langworth') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Stanton', tp_id, 'Voluptatem cum rem aut molestiae debitis. Quis quo quia et nihil. Excepturi nihil odio quis sit. Voluptatum et incidunt.', 'Voluptatem cum rem aut molestiae debitis. Quis quo quia et nihil. Excepturi nihil odio quis sit. Voluptatum et incidunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '491-655-4276 x4336';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170713', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Magnus Greenholt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Larue', tp_id, 'Fugit eveniet sit excepturi beatae qui vitae aspernatur. Tempore rerum qui dolorem totam ipsa in. Magni et soluta eum corporis eligendi. Est voluptatibus voluptas ut ipsa sint.', 'Fugit eveniet sit excepturi beatae qui vitae aspernatur. Tempore rerum qui dolorem totam ipsa in. Magni et soluta eum corporis eligendi. Est voluptatibus voluptas ut ipsa sint.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-338-183-9573 x25600';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120171436', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kole Koss') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Grayson', tp_id, 'Est ut explicabo et doloribus eum voluptatem. Quia non quos vero a ut iusto. Molestias eius ea. Eum omnis vel ducimus numquam consequatur placeat.', 'Est ut explicabo et doloribus eum voluptatem. Quia non quos vero a ut iusto. Molestias eius ea. Eum omnis vel ducimus numquam consequatur placeat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '916.005.8177';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171158', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jennie Wintheiser') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vanessa', tp_id, 'Dicta quia quis est tempore aliquam. Aut sit perspiciatis. Fugit eum nam possimus. Enim adipisci sint.', 'Dicta quia quis est tempore aliquam. Aut sit perspiciatis. Fugit eum nam possimus. Enim adipisci sint.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '921.457.5851';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171901', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ardith Daniel') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dayne', tp_id, 'Et sunt voluptatem. Qui error quis. Minus aut sit mollitia quis quia et est. Sapiente dolor voluptatem est nesciunt officiis repellat ut.', 'Et sunt voluptatem. Qui error quis. Minus aut sit mollitia quis quia et est. Sapiente dolor voluptatem est nesciunt officiis repellat ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(220) 564-8758 x01981';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120172251', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Elena Heathcote') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rosemarie', tp_id, 'Vel voluptatem soluta illo nisi. Id iusto consequatur mollitia quo repudiandae. Sit quia vel voluptatibus. Aut pariatur numquam labore optio beatae quae at. Error maiores aut sunt quas veniam.', 'Vel voluptatem soluta illo nisi. Id iusto consequatur mollitia quo repudiandae. Sit quia vel voluptatibus. Aut pariatur numquam labore optio beatae quae at. Error maiores aut sunt quas veniam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '917.967.2881';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171319', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carroll Nienow') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Aubrey', tp_id, 'Et numquam quia aspernatur. Sunt magnam nulla rerum maxime. Reiciendis unde reprehenderit corporis libero voluptas. Reiciendis harum qui ut eum expedita debitis. Voluptatibus ut dicta. Sapiente debitis quis.', 'Et numquam quia aspernatur. Sunt magnam nulla rerum maxime. Reiciendis unde reprehenderit corporis libero voluptas. Reiciendis harum qui ut eum expedita debitis. Voluptatibus ut dicta. Sapiente debitis quis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(952) 393-3347';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120171747', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Guy Purdy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alec', tp_id, 'Molestiae sunt asperiores qui aut. In et itaque. Eveniet eos eos quo deleniti fugiat placeat ipsum. Nemo aut et alias.', 'Molestiae sunt asperiores qui aut. In et itaque. Eveniet eos eos quo deleniti fugiat placeat ipsum. Nemo aut et alias.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '797.576.9012 x70534';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120172226', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Maxwell Boehm') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Frederic', tp_id, 'Qui esse distinctio. Et esse consectetur sint quia. Voluptatem dolor quidem voluptatum dolore eius. Esse harum eveniet. Cupiditate mollitia earum non saepe.', 'Qui esse distinctio. Et esse consectetur sint quia. Voluptatem dolor quidem voluptatum dolore eius. Esse harum eveniet. Cupiditate mollitia earum non saepe.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '696.061.9397';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171635', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Brennon Koepp') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kody', tp_id, 'Saepe nisi earum ipsum ut maiores minus. Laborum eligendi placeat accusantium. Et enim aperiam aut ipsa in. Ea quos magni iste hic blanditiis et.', 'Saepe nisi earum ipsum ut maiores minus. Laborum eligendi placeat accusantium. Et enim aperiam aut ipsa in. Ea quos magni iste hic blanditiis et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(277) 718-2285 x1355';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171123', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bradley Schinner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Stanton', tp_id, 'Vel fuga inventore. Est velit dolores fugit ut iure quae dolorem. Consequatur dolor magnam sequi libero qui sed. Ullam fugiat magnam non voluptatem necessitatibus dolor. Harum in sed eveniet eligendi magnam. Tempore consequatur distinctio fugit vero.', 'Vel fuga inventore. Est velit dolores fugit ut iure quae dolorem. Consequatur dolor magnam sequi libero qui sed. Ullam fugiat magnam non voluptatem necessitatibus dolor. Harum in sed eveniet eligendi magnam. Tempore consequatur distinctio fugit vero.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '357-926-8849 x75988';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170234', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Scottie Hickle II') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Mikayla', tp_id, 'Magnam ut totam error ut consequatur ad. Et quo et qui atque porro quibusdam eaque. Consequuntur occaecati aut veniam dolores sed quia dolor. Similique non quo iusto et et. Assumenda sit quas natus et ipsa quis.', 'Magnam ut totam error ut consequatur ad. Et quo et qui atque porro quibusdam eaque. Consequuntur occaecati aut veniam dolores sed quia dolor. Similique non quo iusto et et. Assumenda sit quas natus et ipsa quis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '425.475.5370 x313';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120172015', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Laila Marks') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Deshawn', tp_id, 'Hic ut est et nostrum. Voluptas sit amet at corrupti vel consequuntur. Animi officiis aut et nulla minima. Optio dolorem aperiam esse soluta rerum.', 'Hic ut est et nostrum. Voluptas sit amet at corrupti vel consequuntur. Animi officiis aut et nulla minima. Optio dolorem aperiam esse soluta rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '713-271-1704 x271';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120170708', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ryan Fahey') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Creola', tp_id, 'Omnis tempore aperiam excepturi. Illum dolor nostrum iste voluptatum necessitatibus. Expedita voluptas labore. Quam suscipit quia. Modi omnis delectus non ipsa.', 'Omnis tempore aperiam excepturi. Illum dolor nostrum iste voluptatum necessitatibus. Expedita voluptas labore. Quam suscipit quia. Modi omnis delectus non ipsa.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-992-818-6246 x235';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120170943', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Hayden Schimmel') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Reuben', tp_id, 'Praesentium sit quod nostrum commodi dolores sunt reiciendis. Cum eveniet ut magnam. Impedit molestiae nesciunt. Ipsum eum adipisci fugiat magnam corporis non maiores. Neque sed omnis qui magnam et ipsa qui.', 'Praesentium sit quod nostrum commodi dolores sunt reiciendis. Cum eveniet ut magnam. Impedit molestiae nesciunt. Ipsum eum adipisci fugiat magnam corporis non maiores. Neque sed omnis qui magnam et ipsa qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(292) 126-4448';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171206', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jayde Hills') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cortez', tp_id, 'Facilis nisi aut ducimus laboriosam. Eligendi est eum eos in nihil pariatur non. Culpa sunt delectus commodi magni expedita. Unde ratione placeat velit itaque nisi expedita.', 'Facilis nisi aut ducimus laboriosam. Eligendi est eum eos in nihil pariatur non. Culpa sunt delectus commodi magni expedita. Unde ratione placeat velit itaque nisi expedita.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '511-529-9313';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171023', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Christine Stokes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Romaine', tp_id, 'Reprehenderit voluptate sapiente quo. At perspiciatis voluptatem a. Sint quibusdam placeat enim dolorem maiores aliquid aut. Magni aut asperiores deserunt id necessitatibus saepe accusantium. Accusantium sed voluptas voluptatem deleniti error eaque.', 'Reprehenderit voluptate sapiente quo. At perspiciatis voluptatem a. Sint quibusdam placeat enim dolorem maiores aliquid aut. Magni aut asperiores deserunt id necessitatibus saepe accusantium. Accusantium sed voluptas voluptatem deleniti error eaque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-692-213-3192 x2397';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120170255', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Mac Toy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bella', tp_id, 'Et debitis ut minima delectus consectetur vel qui. Repellendus nam aut commodi adipisci. Provident tenetur officiis. Qui blanditiis necessitatibus quasi vitae ea qui.', 'Et debitis ut minima delectus consectetur vel qui. Repellendus nam aut commodi adipisci. Provident tenetur officiis. Qui blanditiis necessitatibus quasi vitae ea qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(249) 794-9789';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120170411', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ed Kling') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jessyca', tp_id, 'Quaerat numquam unde et. Molestiae cum delectus et. Eum ratione distinctio id quasi dolorum. Suscipit incidunt perspiciatis quasi nisi et et tenetur. Quia accusamus aliquid officiis odit qui. Officiis laudantium veniam.', 'Quaerat numquam unde et. Molestiae cum delectus et. Eum ratione distinctio id quasi dolorum. Suscipit incidunt perspiciatis quasi nisi et et tenetur. Quia accusamus aliquid officiis odit qui. Officiis laudantium veniam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '557.512.3900 x5362';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120172132', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alysha Roob IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Beaulah', tp_id, 'Eius aut sequi aut modi nobis. Ut consequatur id velit impedit. Ipsum molestiae culpa quisquam commodi consectetur. Odio nesciunt recusandae quas maxime. Modi saepe occaecati velit accusamus quod.', 'Eius aut sequi aut modi nobis. Ut consequatur id velit impedit. Ipsum molestiae culpa quisquam commodi consectetur. Odio nesciunt recusandae quas maxime. Modi saepe occaecati velit accusamus quod.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(154) 899-5148 x41212';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120172338', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Tanya Effertz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Hershel', tp_id, 'Sed dolorum saepe. Nesciunt ut sit maxime. Illum fuga voluptas repellendus. Dolor error a numquam facere ipsam iste ut.', 'Sed dolorum saepe. Nesciunt ut sit maxime. Illum fuga voluptas repellendus. Dolor error a numquam facere ipsam iste ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-381-611-7509 x952';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170207', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Daphnee Breitenberg PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Waldo', tp_id, 'Necessitatibus repellendus odit corporis voluptatibus voluptatem. Magni eaque est ut temporibus dolorem qui. At distinctio reiciendis aut omnis expedita. Neque fugiat et ea modi exercitationem sapiente voluptatem.', 'Necessitatibus repellendus odit corporis voluptatibus voluptatem. Magni eaque est ut temporibus dolorem qui. At distinctio reiciendis aut omnis expedita. Neque fugiat et ea modi exercitationem sapiente voluptatem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(955) 041-6434';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171712', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Hettie Dooley') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Geraldine', tp_id, 'Distinctio quod facilis quae unde omnis cupiditate. Recusandae molestias quia. Iure nobis saepe quo non quia sed. Facilis libero eveniet et sed vero. Soluta minus omnis dolorum ratione aliquam beatae est.', 'Distinctio quod facilis quae unde omnis cupiditate. Recusandae molestias quia. Iure nobis saepe quo non quia sed. Facilis libero eveniet et sed vero. Soluta minus omnis dolorum ratione aliquam beatae est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-318-749-2009 x816';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120171413', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Eino Bosco') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lucas', tp_id, 'Quis deserunt inventore. Nam accusantium sed commodi architecto rem eum similique. Laboriosam aut consequatur autem ad. Et consectetur iste non in corporis.', 'Quis deserunt inventore. Nam accusantium sed commodi architecto rem eum similique. Laboriosam aut consequatur autem ad. Et consectetur iste non in corporis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(673) 610-2725';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170239', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vella Kling') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rashawn', tp_id, 'Non rem distinctio voluptatem numquam. Quos magni et et. Et voluptatem odit magni. Dolores voluptatem et dolorem.', 'Non rem distinctio voluptatem numquam. Quos magni et et. Et voluptatem odit magni. Dolores voluptatem et dolorem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '563-919-4269';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120172351', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kamryn Collins') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Raphael', tp_id, 'Iste et expedita aliquam eveniet enim maiores neque. Perferendis et placeat quaerat. Natus aut voluptatem quo maxime perferendis. Qui quasi dignissimos corporis. Voluptas et ab. Suscipit iusto facilis occaecati incidunt qui.', 'Iste et expedita aliquam eveniet enim maiores neque. Perferendis et placeat quaerat. Natus aut voluptatem quo maxime perferendis. Qui quasi dignissimos corporis. Voluptas et ab. Suscipit iusto facilis occaecati incidunt qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(338) 110-0616';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120171630', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Opal Auer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Amie', tp_id, 'Suscipit nam autem et. Blanditiis ut voluptatibus quis. Beatae quia consectetur perspiciatis libero qui. Aut totam laudantium maiores iusto. Ipsum aut earum voluptas quaerat labore fugit. Blanditiis impedit et aspernatur.', 'Suscipit nam autem et. Blanditiis ut voluptatibus quis. Beatae quia consectetur perspiciatis libero qui. Aut totam laudantium maiores iusto. Ipsum aut earum voluptas quaerat labore fugit. Blanditiis impedit et aspernatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(984) 115-2326';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120171500', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Misael Osinski IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Reed', tp_id, 'Aut explicabo velit molestiae suscipit accusamus voluptas impedit. Animi omnis aperiam omnis voluptates soluta velit neque. Necessitatibus laudantium provident minus eum harum nemo vitae. Quia consequuntur nisi numquam ipsum quia. Est et omnis quia. Saepe sed et accusantium ut accusamus odit.', 'Aut explicabo velit molestiae suscipit accusamus voluptas impedit. Animi omnis aperiam omnis voluptates soluta velit neque. Necessitatibus laudantium provident minus eum harum nemo vitae. Quia consequuntur nisi numquam ipsum quia. Est et omnis quia. Saepe sed et accusantium ut accusamus odit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '390.744.7788 x210';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170049', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cleve Abernathy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jamal', tp_id, 'Rem aliquam asperiores voluptatibus et. Sit voluptatem aut enim est. Perspiciatis aperiam recusandae doloribus. Excepturi laudantium iure deleniti ducimus. Tempora molestiae voluptas ut.', 'Rem aliquam asperiores voluptatibus et. Sit voluptatem aut enim est. Perspiciatis aperiam recusandae doloribus. Excepturi laudantium iure deleniti ducimus. Tempora molestiae voluptas ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '693-794-3787';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120170746', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Horace Greenholt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Christa', tp_id, 'Minima voluptatem ducimus architecto. Dicta repellendus ut est aut voluptatem accusantium. Eum non porro. Aut voluptatem in incidunt porro. Dolores enim illum sapiente dolore quia.', 'Minima voluptatem ducimus architecto. Dicta repellendus ut est aut voluptatem accusantium. Eum non porro. Aut voluptatem in incidunt porro. Dolores enim illum sapiente dolore quia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '342.523.3179';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120171042', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Tremayne Kuhic IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Derek', tp_id, 'Iusto aut nemo voluptatem est reprehenderit. Aut magnam cum sint quia qui iusto vitae. Asperiores quibusdam consequatur non quis quasi tenetur dolor. Aut cum soluta.', 'Iusto aut nemo voluptatem est reprehenderit. Aut magnam cum sint quia qui iusto vitae. Asperiores quibusdam consequatur non quis quasi tenetur dolor. Aut cum soluta.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-868-670-0826 x85438';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171937', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Neha Spencer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Fritz', tp_id, 'Distinctio eius placeat doloribus aliquam voluptas. Qui minus voluptas eveniet. Nulla dolorem porro et ut. Totam sit iure sequi assumenda ipsa. Aut illum neque eveniet dolores ut cumque consequatur. Deleniti ipsum nisi odit.', 'Distinctio eius placeat doloribus aliquam voluptas. Qui minus voluptas eveniet. Nulla dolorem porro et ut. Totam sit iure sequi assumenda ipsa. Aut illum neque eveniet dolores ut cumque consequatur. Deleniti ipsum nisi odit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(377) 437-6286 x952';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170212', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rashad Bode') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Felix', tp_id, 'Qui iusto aliquam ut. Ipsam nulla architecto ullam provident repellendus at quidem. Sit aut consequatur qui dicta inventore non incidunt. Sint cum quae vero mollitia quos. Placeat fuga non velit quia.', 'Qui iusto aliquam ut. Ipsam nulla architecto ullam provident repellendus at quidem. Sit aut consequatur qui dicta inventore non incidunt. Sint cum quae vero mollitia quos. Placeat fuga non velit quia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '964.944.2060 x8415';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171754', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lauriane Rohan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kallie', tp_id, 'Possimus nihil molestiae odio recusandae ut vitae. Delectus voluptatibus et aperiam consequatur iste eligendi consequatur. Et dolores sed non enim. Nesciunt qui et velit ducimus laudantium eum.', 'Possimus nihil molestiae odio recusandae ut vitae. Delectus voluptatibus et aperiam consequatur iste eligendi consequatur. Et dolores sed non enim. Nesciunt qui et velit ducimus laudantium eum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '636.249.3579 x005';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170020', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Newton Greenfelder') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'King', tp_id, 'Reprehenderit accusantium beatae deleniti optio eum. Officia laudantium esse aut molestiae. Qui possimus vel porro cumque. Suscipit et dolore sit. Nostrum officia dolorem quo ipsum repudiandae. Nemo recusandae ut.', 'Reprehenderit accusantium beatae deleniti optio eum. Officia laudantium esse aut molestiae. Qui possimus vel porro cumque. Suscipit et dolore sit. Nostrum officia dolorem quo ipsum repudiandae. Nemo recusandae ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(123) 855-3815 x400';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170615', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Liza Kiehn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lenore', tp_id, 'Repellat aut hic non est. Quisquam ea laboriosam. Vero hic sint. Ipsum vitae architecto inventore eos quidem. Necessitatibus assumenda voluptatem adipisci. Repellat quae voluptate id.', 'Repellat aut hic non est. Quisquam ea laboriosam. Vero hic sint. Ipsum vitae architecto inventore eos quidem. Necessitatibus assumenda voluptatem adipisci. Repellat quae voluptate id.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(223) 982-9797';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120171233', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ernestine Hermiston') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Yvonne', tp_id, 'Aspernatur fugit consequuntur odit. Fugit quae modi tenetur odit hic ut soluta. Neque labore eaque. Consequatur et cum est minima est ut.', 'Aspernatur fugit consequuntur odit. Fugit quae modi tenetur odit hic ut soluta. Neque labore eaque. Consequatur et cum est minima est ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '369-457-3833 x250';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171854', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Osborne Beahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Electa', tp_id, 'Exercitationem eos nobis nihil. Aperiam laborum totam. A id debitis eos. Recusandae veniam a perferendis repellendus et. Ea cupiditate neque aspernatur eos. Natus ratione autem nam.', 'Exercitationem eos nobis nihil. Aperiam laborum totam. A id debitis eos. Recusandae veniam a perferendis repellendus et. Ea cupiditate neque aspernatur eos. Natus ratione autem nam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '916.937.4630 x858';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120171651', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kelton Wolf') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kory', tp_id, 'Consectetur in suscipit sed dolor. Rerum eum eos excepturi esse enim. Eius laboriosam unde fuga in maxime vel sit. Eos ea corrupti quia perferendis et tempora. Minima aliquam qui quam incidunt consequatur. Harum optio eligendi accusamus sint voluptas.', 'Consectetur in suscipit sed dolor. Rerum eum eos excepturi esse enim. Eius laboriosam unde fuga in maxime vel sit. Eos ea corrupti quia perferendis et tempora. Minima aliquam qui quam incidunt consequatur. Harum optio eligendi accusamus sint voluptas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '163.765.0085 x28264';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171314', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rachel Koepp') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marcelle', tp_id, 'Nihil amet expedita eaque. Voluptas eum sed similique. Voluptas sunt consequatur quia laborum. Maiores id incidunt ut dolorum debitis. Rerum velit exercitationem vero. Officiis vel aut dolorum provident.', 'Nihil amet expedita eaque. Voluptas eum sed similique. Voluptas sunt consequatur quia laborum. Maiores id incidunt ut dolorum debitis. Rerum velit exercitationem vero. Officiis vel aut dolorum provident.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '456-716-9391';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171058', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ed McDermott') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Obie', tp_id, 'Asperiores repudiandae quia omnis sunt. Similique ut eveniet. Debitis atque et ea consequuntur quod. Est nihil sapiente facilis dolorem nesciunt modi consequuntur. Error beatae suscipit et quidem.', 'Asperiores repudiandae quia omnis sunt. Similique ut eveniet. Debitis atque et ea consequuntur quod. Est nihil sapiente facilis dolorem nesciunt modi consequuntur. Error beatae suscipit et quidem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-578-690-4856 x865';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171045', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Armando Hahn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Allison', tp_id, 'Consequatur odit iste numquam ratione laudantium quo illum. Numquam qui ea debitis tempora magni. Cupiditate ut natus aliquam autem exercitationem. Consequuntur modi enim sunt.', 'Consequatur odit iste numquam ratione laudantium quo illum. Numquam qui ea debitis tempora magni. Cupiditate ut natus aliquam autem exercitationem. Consequuntur modi enim sunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '145-164-3690';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171726', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dayna Hahn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brice', tp_id, 'Exercitationem maxime atque. Dolore vel quam laboriosam laudantium et vero. Praesentium modi et est omnis. Et harum eius iure. Laborum autem mollitia.', 'Exercitationem maxime atque. Dolore vel quam laboriosam laudantium et vero. Praesentium modi et est omnis. Et harum eius iure. Laborum autem mollitia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(831) 213-8924';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171810', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Gretchen O''Hara MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Araceli', tp_id, 'Sunt commodi veniam aspernatur labore. Esse et in sed molestias sapiente. Inventore quam doloribus. Optio quo inventore ipsam laboriosam cupiditate sed dignissimos.', 'Sunt commodi veniam aspernatur labore. Esse et in sed molestias sapiente. Inventore quam doloribus. Optio quo inventore ipsam laboriosam cupiditate sed dignissimos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-600-215-4614 x9597';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171534', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Meredith West') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Armand', tp_id, 'Id sint molestiae. Et et placeat pariatur nisi. Eveniet occaecati aut dolore voluptas voluptatem et. Temporibus ut nulla. Blanditiis quo labore veritatis maiores deleniti minima quam.', 'Id sint molestiae. Et et placeat pariatur nisi. Eveniet occaecati aut dolore voluptas voluptatem et. Temporibus ut nulla. Blanditiis quo labore veritatis maiores deleniti minima quam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '330.509.8446 x8137';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120171257', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Anissa Murazik Jr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Delphine', tp_id, 'Ex magnam harum repellendus error voluptatem officia molestias. Optio sunt qui. Quidem reiciendis quia sit. Unde sunt quisquam sapiente voluptatem et. Beatae exercitationem nihil rerum cupiditate suscipit.', 'Ex magnam harum repellendus error voluptatem officia molestias. Optio sunt qui. Quidem reiciendis quia sit. Unde sunt quisquam sapiente voluptatem et. Beatae exercitationem nihil rerum cupiditate suscipit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-463-907-4785';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170914', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Albert Strosin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Neoma', tp_id, 'Sed qui sequi repellendus praesentium placeat. In repellendus quia consequuntur reiciendis dolorem. Corporis quae cupiditate rerum ut molestiae. Commodi iste minus. Non quia in aut fugiat ratione. Id architecto quo.', 'Sed qui sequi repellendus praesentium placeat. In repellendus quia consequuntur reiciendis dolorem. Corporis quae cupiditate rerum ut molestiae. Commodi iste minus. Non quia in aut fugiat ratione. Id architecto quo.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-860-158-4625 x402';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220172240', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vella Hauck') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Belle', tp_id, 'Autem iste est rem accusamus fugit dolores. Velit a magnam temporibus assumenda et. Totam corporis et ratione sit minima voluptatum beatae. Est odit et ea voluptatibus cupiditate.', 'Autem iste est rem accusamus fugit dolores. Velit a magnam temporibus assumenda et. Totam corporis et ratione sit minima voluptatum beatae. Est odit et ea voluptatibus cupiditate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '832-172-4852 x87977';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171732', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Leland Cremin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Craig', tp_id, 'Eveniet sunt inventore. Accusamus qui sequi consequatur. Dolorem porro quia. Consectetur et omnis corrupti fugit minima. Est doloremque deleniti et laudantium vero pariatur ut.', 'Eveniet sunt inventore. Accusamus qui sequi consequatur. Dolorem porro quia. Consectetur et omnis corrupti fugit minima. Est doloremque deleniti et laudantium vero pariatur ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '647-187-3681 x4555';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170706', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Garnet Blick') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Allene', tp_id, 'Est earum vel. Fugit voluptas ut perferendis quam accusamus natus. Perferendis sit nam error ipsa dolor et. Officia nihil nisi dolore reprehenderit placeat alias. Impedit optio aut. Labore aut facilis animi.', 'Est earum vel. Fugit voluptas ut perferendis quam accusamus natus. Perferendis sit nam error ipsa dolor et. Officia nihil nisi dolore reprehenderit placeat alias. Impedit optio aut. Labore aut facilis animi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '608.762.9954';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120170306', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Donald Jones PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Danny', tp_id, 'Eum labore et consequatur laborum quibusdam quisquam. Et placeat delectus velit nulla. Maiores magnam at beatae voluptatum hic. Et nam quia sunt. Eos ullam sint ut perspiciatis. Natus quisquam ullam.', 'Eum labore et consequatur laborum quibusdam quisquam. Et placeat delectus velit nulla. Maiores magnam at beatae voluptatum hic. Et nam quia sunt. Eos ullam sint ut perspiciatis. Natus quisquam ullam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-870-157-0176 x2232';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120170608', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Rolando O''Hara') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Oma', tp_id, 'Quisquam non magni est sunt laboriosam consequatur. Labore consequatur vel animi placeat nam sunt exercitationem. Minima autem inventore. Dignissimos iure aut dicta ut consequatur tempore.', 'Quisquam non magni est sunt laboriosam consequatur. Labore consequatur vel animi placeat nam sunt exercitationem. Minima autem inventore. Dignissimos iure aut dicta ut consequatur tempore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(146) 592-1620';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170937', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dayana Feest') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vincent', tp_id, 'Deserunt enim cupiditate sunt quo voluptas quae. Quidem molestiae ullam consequatur non. Veniam eos quae itaque non voluptatem. Maiores sed recusandae illum consequatur eum rem. Mollitia ducimus ea expedita vero est neque.', 'Deserunt enim cupiditate sunt quo voluptas quae. Quidem molestiae ullam consequatur non. Veniam eos quae itaque non voluptatem. Maiores sed recusandae illum consequatur eum rem. Mollitia ducimus ea expedita vero est neque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-318-573-7962 x235';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170103', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Russ Fay') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rubie', tp_id, 'Voluptatem numquam molestias et ut consequatur rerum. Ullam quod voluptas sed. Aperiam ipsa quia sed recusandae fugit molestiae. Quasi ut ipsam aut. Perspiciatis ut laboriosam.', 'Voluptatem numquam molestias et ut consequatur rerum. Ullam quod voluptas sed. Aperiam ipsa quia sed recusandae fugit molestiae. Quasi ut ipsam aut. Perspiciatis ut laboriosam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '670-340-2361 x190';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120172142', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Aurelie Beahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Samanta', tp_id, 'Et autem accusamus magnam voluptas aut quaerat nihil. Sunt aut alias quo. Quia sint accusantium expedita eaque ipsam similique magni. Possimus aut tempore numquam inventore. Et ut sint rem sapiente et repellat ipsam. Dolores voluptas omnis quasi vel porro quis nemo.', 'Et autem accusamus magnam voluptas aut quaerat nihil. Sunt aut alias quo. Quia sint accusantium expedita eaque ipsam similique magni. Possimus aut tempore numquam inventore. Et ut sint rem sapiente et repellat ipsam. Dolores voluptas omnis quasi vel porro quis nemo.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '412-567-4869';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171556', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rosalee Dickens') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Margie', tp_id, 'Totam rerum nihil. Laborum enim quisquam voluptatem. Nisi soluta fugiat quos. Voluptates et et ab. At ullam quisquam. Qui natus non alias explicabo suscipit laudantium dicta.', 'Totam rerum nihil. Laborum enim quisquam voluptatem. Nisi soluta fugiat quos. Voluptates et et ab. At ullam quisquam. Qui natus non alias explicabo suscipit laudantium dicta.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-813-645-1625 x79457';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120171039', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Name Collins') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Scarlett', tp_id, 'Cum odio ab aliquid tempore cumque ipsum. Non porro tenetur. Impedit quod harum aut. Libero rem doloremque beatae. Perferendis exercitationem nobis et. Dolorem consequatur architecto debitis sunt incidunt.', 'Cum odio ab aliquid tempore cumque ipsum. Non porro tenetur. Impedit quod harum aut. Libero rem doloremque beatae. Perferendis exercitationem nobis et. Dolorem consequatur architecto debitis sunt incidunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(943) 417-5838';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170302', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jason Dooley') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kirk', tp_id, 'Animi cum qui voluptatem dolorem consequuntur impedit. Consectetur nulla nemo unde sint ipsam. Veniam quam pariatur. Vel unde doloremque corrupti deserunt tempora eum. Ad nihil a nesciunt et. Quod sapiente velit ut voluptatum.', 'Animi cum qui voluptatem dolorem consequuntur impedit. Consectetur nulla nemo unde sint ipsam. Veniam quam pariatur. Vel unde doloremque corrupti deserunt tempora eum. Ad nihil a nesciunt et. Quod sapiente velit ut voluptatum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-656-581-6752';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171947', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Coby Christiansen Jr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Shayne', tp_id, 'Debitis deleniti et quia occaecati. Minus temporibus quis. Perspiciatis exercitationem sint nulla asperiores beatae qui. Quis ab rerum.', 'Debitis deleniti et quia occaecati. Minus temporibus quis. Perspiciatis exercitationem sint nulla asperiores beatae qui. Quis ab rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(286) 599-2205 x90317';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120170221', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Junior Schneider') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brooks', tp_id, 'Perspiciatis ullam cupiditate qui. Doloribus aperiam omnis soluta eligendi et ratione. Sit qui tempora voluptas voluptas dolores recusandae. Aperiam nihil quisquam eos et veritatis. Debitis deleniti magni amet rerum officia distinctio. Ullam ipsam qui.', 'Perspiciatis ullam cupiditate qui. Doloribus aperiam omnis soluta eligendi et ratione. Sit qui tempora voluptas voluptas dolores recusandae. Aperiam nihil quisquam eos et veritatis. Debitis deleniti magni amet rerum officia distinctio. Ullam ipsam qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '390-749-3101';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120171711', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kimberly White III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Fanny', tp_id, 'At eaque quidem voluptatem. Rerum perferendis alias ut. Illum qui expedita est. Est est ullam odio autem nihil quaerat. Quasi nostrum consequatur neque atque.', 'At eaque quidem voluptatem. Rerum perferendis alias ut. Illum qui expedita est. Est est ullam odio autem nihil quaerat. Quasi nostrum consequatur neque atque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-922-857-6378 x8724';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220171459', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Eli Casper') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Micheal', tp_id, 'Quis atque eos rerum. Molestias minima aperiam beatae at officia dolores. Eveniet ut iure commodi. Quo debitis id dolorem delectus corporis. Odio doloremque nihil voluptas vel. Voluptas odio non doloribus illum.', 'Quis atque eos rerum. Molestias minima aperiam beatae at officia dolores. Eveniet ut iure commodi. Quo debitis id dolorem delectus corporis. Odio doloremque nihil voluptas vel. Voluptas odio non doloribus illum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '162.109.4049';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120170648', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Colten Mohr') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Wilbert', tp_id, 'Porro quo ut. Cumque quidem aliquam ducimus eos aperiam laudantium. Nam et ut tempora molestiae sed vitae. Molestias odio atque distinctio et autem iusto. Quae cum fugiat totam.', 'Porro quo ut. Cumque quidem aliquam ducimus eos aperiam laudantium. Nam et ut tempora molestiae sed vitae. Molestias odio atque distinctio et autem iusto. Quae cum fugiat totam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-198-734-7798';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120172034', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dawn Tillman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Price', tp_id, 'Voluptatem ipsum voluptates error tempora aut corrupti repellendus. Consequatur commodi pariatur excepturi similique nulla. Corrupti velit tempora id sed sed. Sunt dicta voluptas.', 'Voluptatem ipsum voluptates error tempora aut corrupti repellendus. Consequatur commodi pariatur excepturi similique nulla. Corrupti velit tempora id sed sed. Sunt dicta voluptas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-167-699-4559 x73411';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170502', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rozella Berge') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Harmony', tp_id, 'Vel in laborum omnis. Repellat deleniti explicabo tempore nemo repudiandae. Ea qui et rerum eum optio sed. Omnis amet autem. Reiciendis nihil magnam eos earum fuga.', 'Vel in laborum omnis. Repellat deleniti explicabo tempore nemo repudiandae. Ea qui et rerum eum optio sed. Omnis amet autem. Reiciendis nihil magnam eos earum fuga.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-231-143-7611 x2610';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170631', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Erin Beahan III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Chris', tp_id, 'Quam et et eligendi qui. Id distinctio dolorem illo quo alias. Ut aliquam doloremque non rerum. Sit accusantium dolore aut fuga. Aliquid sit beatae non. Ipsam modi officiis molestias.', 'Quam et et eligendi qui. Id distinctio dolorem illo quo alias. Ut aliquam doloremque non rerum. Sit accusantium dolore aut fuga. Aliquid sit beatae non. Ipsam modi officiis molestias.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-881-011-2766 x025';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120171542', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lowell Bartell') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Angelina', tp_id, 'Quo ab vero dolores dolores qui saepe. Aut distinctio minus. Nihil sint qui modi blanditiis consequatur qui dolorem. Libero voluptas nesciunt perspiciatis sunt corrupti. Omnis ut optio debitis consequatur commodi placeat ut.', 'Quo ab vero dolores dolores qui saepe. Aut distinctio minus. Nihil sint qui modi blanditiis consequatur qui dolorem. Libero voluptas nesciunt perspiciatis sunt corrupti. Omnis ut optio debitis consequatur commodi placeat ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '453.078.9134';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120170915', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Anita Lubowitz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Delia', tp_id, 'Dolores dolores ipsum esse. Ducimus quibusdam esse ea. Beatae non unde voluptatum velit eum repellat fugiat. Voluptatem dolores ut nemo ex aut ad minus.', 'Dolores dolores ipsum esse. Ducimus quibusdam esse ea. Beatae non unde voluptatum velit eum repellat fugiat. Voluptatem dolores ut nemo ex aut ad minus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '396.377.1600 x5052';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171625', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carlo Barrows MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Schuyler', tp_id, 'Quisquam dolorum praesentium. Eum natus quis inventore. Et tempore voluptas molestiae. Quos quis molestiae necessitatibus velit cum occaecati.', 'Quisquam dolorum praesentium. Eum natus quis inventore. Et tempore voluptas molestiae. Quos quis molestiae necessitatibus velit cum occaecati.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-534-972-0158 x25196';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171514', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Austen Hintz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kathryne', tp_id, 'In non non dolorem rem. Exercitationem est harum. Omnis et numquam ipsam reprehenderit sint iusto est. Aut autem ratione rem dolores. Qui ducimus corrupti consequatur aspernatur laboriosam soluta perspiciatis. Impedit modi natus.', 'In non non dolorem rem. Exercitationem est harum. Omnis et numquam ipsam reprehenderit sint iusto est. Aut autem ratione rem dolores. Qui ducimus corrupti consequatur aspernatur laboriosam soluta perspiciatis. Impedit modi natus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '464-618-0131 x72989';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220170338', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Deanna Jacobson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Unique', tp_id, 'Et cumque qui sunt aut accusamus. Delectus et et tenetur voluptatem quod debitis inventore. Laborum minus voluptates quia amet alias labore a. Voluptatem eum dolor animi doloribus labore dignissimos sunt. Iste enim quia consequatur minima nihil.', 'Et cumque qui sunt aut accusamus. Delectus et et tenetur voluptatem quod debitis inventore. Laborum minus voluptates quia amet alias labore a. Voluptatem eum dolor animi doloribus labore dignissimos sunt. Iste enim quia consequatur minima nihil.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-196-071-6722';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171937', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Avis Wilderman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Golden', tp_id, 'Numquam quam dolor veniam quo. Sit voluptatibus rem laborum ab esse iusto numquam. Provident et molestiae enim dolorem illo. Deserunt molestiae quia odit. Itaque quia voluptatem sint aperiam totam deleniti.', 'Numquam quam dolor veniam quo. Sit voluptatibus rem laborum ab esse iusto numquam. Provident et molestiae enim dolorem illo. Deserunt molestiae quia odit. Itaque quia voluptatem sint aperiam totam deleniti.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-146-162-9210 x43113';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120171258', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rasheed Kiehn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rosalia', tp_id, 'Et voluptas iure mollitia. Maxime dolore non iure sunt qui. Rerum aliquid repudiandae occaecati quibusdam inventore. Consequatur facilis sit. Culpa voluptate odio nisi quia consequatur. Velit ipsam sit architecto et iusto.', 'Et voluptas iure mollitia. Maxime dolore non iure sunt qui. Rerum aliquid repudiandae occaecati quibusdam inventore. Consequatur facilis sit. Culpa voluptate odio nisi quia consequatur. Velit ipsam sit architecto et iusto.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(115) 298-3385 x643';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171213', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Orlo Adams') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ubaldo', tp_id, 'Perspiciatis eos ratione in animi. Expedita asperiores ea eum. Similique quaerat tempore sunt doloremque necessitatibus enim. Neque impedit ipsam consequuntur. Dolore voluptatum vel molestiae corrupti veritatis et rerum. Quis non consequatur delectus ad.', 'Perspiciatis eos ratione in animi. Expedita asperiores ea eum. Similique quaerat tempore sunt doloremque necessitatibus enim. Neque impedit ipsam consequuntur. Dolore voluptatum vel molestiae corrupti veritatis et rerum. Quis non consequatur delectus ad.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '460.228.4550 x9278';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170802', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Wilhelm Schmeler') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brendan', tp_id, 'Saepe tenetur perferendis unde distinctio qui vel sint. In molestias iusto magnam et nobis exercitationem. Ut soluta est. Recusandae deleniti ullam qui. Molestiae aut perspiciatis reprehenderit. Aspernatur ut sit nostrum aut.', 'Saepe tenetur perferendis unde distinctio qui vel sint. In molestias iusto magnam et nobis exercitationem. Ut soluta est. Recusandae deleniti ullam qui. Molestiae aut perspiciatis reprehenderit. Aspernatur ut sit nostrum aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '878-649-9920';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170121', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lydia Heathcote Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vance', tp_id, 'Quis harum nam molestiae. Est vitae facere. Amet consequatur itaque. Adipisci at enim odio. Dolorem doloribus temporibus consectetur enim distinctio fugit et. Nihil quibusdam repellat a consequatur.', 'Quis harum nam molestiae. Est vitae facere. Amet consequatur itaque. Adipisci at enim odio. Dolorem doloribus temporibus consectetur enim distinctio fugit et. Nihil quibusdam repellat a consequatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-913-248-8860';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171256', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rogers Homenick') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Isidro', tp_id, 'Sit consequatur dicta nobis. Et exercitationem blanditiis saepe dolorem nisi dolor. Modi voluptate distinctio ut et. Iure et non nam at. Ea quia dolores modi.', 'Sit consequatur dicta nobis. Et exercitationem blanditiis saepe dolorem nisi dolor. Modi voluptate distinctio ut et. Iure et non nam at. Ea quia dolores modi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-272-749-7302';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120170341', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jason Waelchi') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Clementina', tp_id, 'Recusandae voluptatum maxime magnam error adipisci cupiditate. Et esse aut aspernatur mollitia deleniti voluptatum unde. Dolor accusamus repellendus. Consequuntur neque architecto quo quas labore.', 'Recusandae voluptatum maxime magnam error adipisci cupiditate. Et esse aut aspernatur mollitia deleniti voluptatum unde. Dolor accusamus repellendus. Consequuntur neque architecto quo quas labore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-219-187-4602 x94817';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170226', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Stevie Moore') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ryan', tp_id, 'Eligendi enim aliquid. Accusantium quos repellat nulla ut dolorum. Quas et blanditiis vitae quae. Provident in pariatur asperiores consequatur eum. Hic ut ut. Voluptates dicta officia.', 'Eligendi enim aliquid. Accusantium quos repellat nulla ut dolorum. Quas et blanditiis vitae quae. Provident in pariatur asperiores consequatur eum. Hic ut ut. Voluptates dicta officia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(986) 083-0235 x11818';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120170719', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Immanuel Kertzmann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Velda', tp_id, 'Aperiam ducimus rerum aut magni cupiditate. Alias et eos enim. Similique consequuntur excepturi impedit ducimus odit. Ratione ut veniam praesentium. Et vel repellendus. Et omnis fugit quibusdam.', 'Aperiam ducimus rerum aut magni cupiditate. Alias et eos enim. Similique consequuntur excepturi impedit ducimus odit. Ratione ut veniam praesentium. Et vel repellendus. Et omnis fugit quibusdam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(972) 607-2745 x277';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120170224', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Agnes Casper') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Isabell', tp_id, 'Veritatis ea numquam laboriosam qui in aut. Nisi autem asperiores nostrum doloribus rerum animi accusamus. Inventore et sint. Incidunt dolor qui numquam.', 'Veritatis ea numquam laboriosam qui in aut. Nisi autem asperiores nostrum doloribus rerum animi accusamus. Inventore et sint. Incidunt dolor qui numquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(966) 147-2328';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120171308', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Aylin Hoeger') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Wanda', tp_id, 'Mollitia ut nihil non quis eveniet est qui. Velit id harum sit quod. Sit impedit non dolor perspiciatis ab vel. Repellendus veniam sit consequatur vel. Dolorem quia minus sunt adipisci sit.', 'Mollitia ut nihil non quis eveniet est qui. Velit id harum sit quod. Sit impedit non dolor perspiciatis ab vel. Repellendus veniam sit consequatur vel. Dolorem quia minus sunt adipisci sit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '916-349-6217';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170355', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Brendan Halvorson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elody', tp_id, 'Et suscipit et facilis eveniet ut. At est magni odio saepe aut mollitia numquam. Debitis rerum dolore dolor hic error. Et ut quisquam iure aut delectus.', 'Et suscipit et facilis eveniet ut. At est magni odio saepe aut mollitia numquam. Debitis rerum dolore dolor hic error. Et ut quisquam iure aut delectus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-157-083-2720 x2724';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120171420', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Nola Lueilwitz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Deion', tp_id, 'Rerum corrupti earum voluptatem nemo omnis tenetur. Molestiae vel et nostrum sit. Maxime iure veritatis qui. Deserunt doloremque nostrum quas dolor.', 'Rerum corrupti earum voluptatem nemo omnis tenetur. Molestiae vel et nostrum sit. Maxime iure veritatis qui. Deserunt doloremque nostrum quas dolor.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-739-329-4978';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170049', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Betty Schroeder Jr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Karolann', tp_id, 'Enim eligendi vel. Quia ad at laborum eos possimus expedita. Hic sed aut doloremque porro reprehenderit velit sit. Maiores praesentium animi dolorum. Ad quos ea alias magnam.', 'Enim eligendi vel. Quia ad at laborum eos possimus expedita. Hic sed aut doloremque porro reprehenderit velit sit. Maiores praesentium animi dolorum. Ad quos ea alias magnam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '696.184.2659 x018';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170003', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Everardo Bode') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dorcas', tp_id, 'Cumque quisquam sit eum. Quo animi aliquam pariatur sit eligendi. Velit consectetur tempora aut. Quidem rem id similique odit.', 'Cumque quisquam sit eum. Quo animi aliquam pariatur sit eligendi. Velit consectetur tempora aut. Quidem rem id similique odit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '863-001-3265 x517';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171147', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Liliana Denesik') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Modesto', tp_id, 'Beatae et illo molestiae delectus rem. Omnis tempore nemo in voluptatibus voluptate itaque adipisci. Accusantium atque quod nulla. Iste impedit nobis autem.', 'Beatae et illo molestiae delectus rem. Omnis tempore nemo in voluptatibus voluptate itaque adipisci. Accusantium atque quod nulla. Iste impedit nobis autem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-848-032-9402';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171017', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Charlotte Gislason V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Katelyn', tp_id, 'Sunt porro eligendi sit qui. Autem nisi eum reiciendis ut. Consequatur dolorem delectus laborum qui reiciendis quo. Rerum rerum minus animi ex.', 'Sunt porro eligendi sit qui. Autem nisi eum reiciendis ut. Consequatur dolorem delectus laborum qui reiciendis quo. Rerum rerum minus animi ex.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(651) 857-3419';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120170039', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cecilia Dach') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cletus', tp_id, 'Deleniti veniam fuga ad molestiae. Recusandae deleniti voluptas qui nostrum qui tempora numquam. Labore quo voluptatem magnam accusantium harum. Necessitatibus eum qui amet ut.', 'Deleniti veniam fuga ad molestiae. Recusandae deleniti voluptas qui nostrum qui tempora numquam. Labore quo voluptatem magnam accusantium harum. Necessitatibus eum qui amet ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '615-414-5621 x32048';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170229', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jana Dickinson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Moshe', tp_id, 'Et fugiat error voluptas maiores voluptas. Atque expedita dolores accusantium aut. Quis veniam debitis veritatis dignissimos. Qui eaque similique ut sit qui repellat facilis.', 'Et fugiat error voluptas maiores voluptas. Atque expedita dolores accusantium aut. Quis veniam debitis veritatis dignissimos. Qui eaque similique ut sit qui repellat facilis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '782-813-1898 x23458';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170436', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lazaro Nader V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vance', tp_id, 'Possimus sit exercitationem animi autem porro. Consequuntur rerum aut exercitationem laudantium et. Ut voluptas exercitationem. Et velit nemo similique repellat voluptatum ipsum.', 'Possimus sit exercitationem animi autem porro. Consequuntur rerum aut exercitationem laudantium et. Ut voluptas exercitationem. Et velit nemo similique repellat voluptatum ipsum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-968-895-0837 x6005';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170146', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Nash Toy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Abbie', tp_id, 'Sequi odit consequuntur sit. Non tempora occaecati rerum. Autem eos quod dolore voluptates iste. Enim eligendi aut voluptatem molestias.', 'Sequi odit consequuntur sit. Non tempora occaecati rerum. Autem eos quod dolore voluptates iste. Enim eligendi aut voluptatem molestias.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-834-657-0974 x921';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120171706', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Nikki Zieme') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Clovis', tp_id, 'Est dolore occaecati qui. Nobis velit officia inventore nulla. Ea exercitationem aliquam perferendis quo est aliquid quo. Deleniti quod sint sed necessitatibus earum. Molestiae culpa quia omnis. Esse atque minus.', 'Est dolore occaecati qui. Nobis velit officia inventore nulla. Ea exercitationem aliquam perferendis quo est aliquid quo. Deleniti quod sint sed necessitatibus earum. Molestiae culpa quia omnis. Esse atque minus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-692-490-0180';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120172017', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Quinton Monahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Milan', tp_id, 'Rerum aut sapiente et voluptas. Quo et repellat aliquam. Enim beatae eveniet exercitationem aspernatur libero. Impedit commodi nihil ratione aut vel cumque. Nihil a doloremque quibusdam. Tempore ratione ut dolor ipsa illo id est.', 'Rerum aut sapiente et voluptas. Quo et repellat aliquam. Enim beatae eveniet exercitationem aspernatur libero. Impedit commodi nihil ratione aut vel cumque. Nihil a doloremque quibusdam. Tempore ratione ut dolor ipsa illo id est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(337) 339-3822 x264';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120170336', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Brittany Ritchie') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gianni', tp_id, 'Vero aut qui sunt rerum. Cumque in quaerat omnis. Animi ut a et necessitatibus id. Sit voluptate corrupti atque eius.', 'Vero aut qui sunt rerum. Cumque in quaerat omnis. Animi ut a et necessitatibus id. Sit voluptate corrupti atque eius.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-690-582-5368';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171952', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kathlyn Haag') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Janis', tp_id, 'Et quia quas repellat perferendis excepturi. Consequatur reiciendis qui quasi vitae consequatur sed voluptatem. Consectetur ipsam animi similique et. Dolores aut eum rerum minus. Itaque ut autem tempore et et laborum.', 'Et quia quas repellat perferendis excepturi. Consequatur reiciendis qui quasi vitae consequatur sed voluptatem. Consectetur ipsam animi similique et. Dolores aut eum rerum minus. Itaque ut autem tempore et et laborum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-478-527-5376 x99181';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170745', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Francisco Stracke') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brannon', tp_id, 'Et earum dolorem tempora et et facere. Neque sint voluptatibus quia. Dignissimos veniam deserunt rerum aut sit in quibusdam. Quibusdam consequuntur qui architecto nulla non minima et.', 'Et earum dolorem tempora et et facere. Neque sint voluptatibus quia. Dignissimos veniam deserunt rerum aut sit in quibusdam. Quibusdam consequuntur qui architecto nulla non minima et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '808-923-0192';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220170921', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Travis Toy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Eric', tp_id, 'Iure alias rem quia. Consectetur voluptatem impedit non non a. Consequuntur in consequatur aliquid pariatur. Aut pariatur ut sit illum. Eum omnis voluptatum non officiis.', 'Iure alias rem quia. Consectetur voluptatem impedit non non a. Consequuntur in consequatur aliquid pariatur. Aut pariatur ut sit illum. Eum omnis voluptatum non officiis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '786.530.3857 x2938';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170527', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vince Carroll') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kristy', tp_id, 'Nesciunt voluptas placeat dolor quasi. Unde rerum doloremque quia officiis et. Ad quas aliquid fuga ut veniam. Sint corporis quae. Consequuntur omnis numquam dolorem.', 'Nesciunt voluptas placeat dolor quasi. Unde rerum doloremque quia officiis et. Ad quas aliquid fuga ut veniam. Sint corporis quae. Consequuntur omnis numquam dolorem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '606-042-8413';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170346', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hermann Stokes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Zelma', tp_id, 'Officiis rerum nam sed quibusdam deserunt. Omnis est corrupti molestias. Tempore laudantium ad perferendis et voluptate quo. Saepe harum quas maxime dolores. Quam quasi quis in atque at reiciendis sunt.', 'Officiis rerum nam sed quibusdam deserunt. Omnis est corrupti molestias. Tempore laudantium ad perferendis et voluptate quo. Saepe harum quas maxime dolores. Quam quasi quis in atque at reiciendis sunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '235-496-9598 x51935';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171754', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lydia Schoen Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Emery', tp_id, 'Rerum excepturi corrupti soluta libero nostrum facilis. Eum aspernatur iusto asperiores quia. Aspernatur omnis fuga et eos est dolorem. Animi et vel voluptas cum. Molestiae omnis aut quo. Consequuntur id sunt ex impedit possimus voluptatem.', 'Rerum excepturi corrupti soluta libero nostrum facilis. Eum aspernatur iusto asperiores quia. Aspernatur omnis fuga et eos est dolorem. Animi et vel voluptas cum. Molestiae omnis aut quo. Consequuntur id sunt ex impedit possimus voluptatem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '372.433.1695';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120170503', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Cielo Schowalter') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brown', tp_id, 'Eius voluptatem quaerat quidem et ducimus. Rerum quis minus magnam aut quo ullam sint. Ipsa omnis deserunt et dolorem doloribus. Voluptatem est sit et.', 'Eius voluptatem quaerat quidem et ducimus. Rerum quis minus magnam aut quo ullam sint. Ipsa omnis deserunt et dolorem doloribus. Voluptatem est sit et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-710-322-7998 x5648';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171445', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Wanda Rutherford') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Linnie', tp_id, 'Repudiandae sit occaecati impedit a veritatis neque deserunt. Qui harum a exercitationem eius aut earum quaerat. Odio ipsam nesciunt quas. Autem modi voluptatem enim. Incidunt natus voluptates quia dolorem praesentium.', 'Repudiandae sit occaecati impedit a veritatis neque deserunt. Qui harum a exercitationem eius aut earum quaerat. Odio ipsam nesciunt quas. Autem modi voluptatem enim. Incidunt natus voluptates quia dolorem praesentium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(739) 953-4427 x22075';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120172148', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dorcas O''Conner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Felipa', tp_id, 'At accusantium fugit eos quo ipsa excepturi enim. Eligendi voluptatem cumque quae ducimus quibusdam. Nulla et placeat. Delectus ut at fuga vel voluptatem ullam. Repellendus qui beatae ipsam illo unde enim.', 'At accusantium fugit eos quo ipsa excepturi enim. Eligendi voluptatem cumque quae ducimus quibusdam. Nulla et placeat. Delectus ut at fuga vel voluptatem ullam. Repellendus qui beatae ipsam illo unde enim.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(397) 732-4539';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120172153', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Amina Aufderhar') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Idella', tp_id, 'Quaerat rerum dolores fugiat. Est ipsam deleniti quia sint. Esse qui voluptatem aperiam voluptatem odit. Ipsam cum accusantium. Voluptas odio quo sunt nihil sint fugit.', 'Quaerat rerum dolores fugiat. Est ipsam deleniti quia sint. Esse qui voluptatem aperiam voluptatem odit. Ipsam cum accusantium. Voluptas odio quo sunt nihil sint fugit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '753.436.2822 x15551';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171448', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Joshuah Durgan Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lenny', tp_id, 'Aliquid repudiandae eius voluptas cum omnis maiores unde. Quaerat laudantium voluptas dolorem. Vero est non nam consequatur dolores. Ratione aut expedita.', 'Aliquid repudiandae eius voluptas cum omnis maiores unde. Quaerat laudantium voluptas dolorem. Vero est non nam consequatur dolores. Ratione aut expedita.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(734) 777-9320 x28378';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170118', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Lila Cassin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marcellus', tp_id, 'Labore libero iste in. Sunt consectetur nihil consequuntur qui beatae. Incidunt aliquid magni corporis iusto reprehenderit quis. Perspiciatis quos sit. Inventore natus consectetur. Saepe molestiae aut tempore est assumenda accusamus dolore.', 'Labore libero iste in. Sunt consectetur nihil consequuntur qui beatae. Incidunt aliquid magni corporis iusto reprehenderit quis. Perspiciatis quos sit. Inventore natus consectetur. Saepe molestiae aut tempore est assumenda accusamus dolore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '184-402-4406';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120171438', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cielo Kreiger') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Melba', tp_id, 'Quibusdam possimus quia culpa occaecati maxime. Quis est saepe facere. Voluptatem corporis nesciunt asperiores nemo enim et enim. Qui veritatis dolorem ea fuga fugiat perspiciatis temporibus. Dignissimos ut omnis sed quidem earum sed est.', 'Quibusdam possimus quia culpa occaecati maxime. Quis est saepe facere. Voluptatem corporis nesciunt asperiores nemo enim et enim. Qui veritatis dolorem ea fuga fugiat perspiciatis temporibus. Dignissimos ut omnis sed quidem earum sed est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(685) 894-3397 x61344';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171659', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Amie Runte MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'German', tp_id, 'Excepturi vero est minus a iste autem. Qui ab recusandae aut. Voluptates quo illum reprehenderit vel architecto. Sint voluptas provident ex.', 'Excepturi vero est minus a iste autem. Qui ab recusandae aut. Voluptates quo illum reprehenderit vel architecto. Sint voluptas provident ex.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '930.652.2255';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120170912', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Shanna Adams') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Aaliyah', tp_id, 'Et quis officia voluptas minus et facere. Corporis cum quia consequuntur. Rerum molestiae ut consequatur ab aut. Sed repellat sunt deleniti rerum. Omnis dolorem corrupti nam est qui natus sint.', 'Et quis officia voluptas minus et facere. Corporis cum quia consequuntur. Rerum molestiae ut consequatur ab aut. Sed repellat sunt deleniti rerum. Omnis dolorem corrupti nam est qui natus sint.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '366-758-7685 x6170';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220171356', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rod Casper') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Katrina', tp_id, 'Sit debitis illum. Facilis aliquam velit eius mollitia. Ex quos eius dolor dolorem maiores recusandae. Nesciunt incidunt numquam quis ut ipsam omnis et. Dignissimos temporibus fugit.', 'Sit debitis illum. Facilis aliquam velit eius mollitia. Ex quos eius dolor dolorem maiores recusandae. Nesciunt incidunt numquam quis ut ipsam omnis et. Dignissimos temporibus fugit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '804.899.5103 x7121';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120170414', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Torrey Hyatt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Joy', tp_id, 'Et ipsum fuga sunt aut. Neque ut aut et vel temporibus vel ea. Recusandae dolor mollitia consequatur. Accusantium a ut ipsam. Enim cupiditate dolores. Quo nihil quis commodi doloribus voluptatem dignissimos.', 'Et ipsum fuga sunt aut. Neque ut aut et vel temporibus vel ea. Recusandae dolor mollitia consequatur. Accusantium a ut ipsam. Enim cupiditate dolores. Quo nihil quis commodi doloribus voluptatem dignissimos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '259-036-4916 x1232';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120172205', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Elenora Eichmann MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lorenz', tp_id, 'Corporis minus consequatur est vero maiores aut. Autem ut commodi dignissimos voluptas. Expedita officiis atque et et sed corrupti. Facere qui sed quis ut sed voluptas. Error a maiores dolore non.', 'Corporis minus consequatur est vero maiores aut. Autem ut commodi dignissimos voluptas. Expedita officiis atque et et sed corrupti. Facere qui sed quis ut sed voluptas. Error a maiores dolore non.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '723-461-4120';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120171254', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Eusebio Wintheiser') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Reece', tp_id, 'Amet animi excepturi ipsa sed. Recusandae ad id adipisci voluptatem quos doloremque sit. Quia asperiores odio quaerat voluptatum. Ut qui aliquid et qui consequatur excepturi maxime. Rerum similique animi soluta beatae.', 'Amet animi excepturi ipsa sed. Recusandae ad id adipisci voluptatem quos doloremque sit. Quia asperiores odio quaerat voluptatum. Ut qui aliquid et qui consequatur excepturi maxime. Rerum similique animi soluta beatae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '877-174-2853';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120172210', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Godfrey Osinski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kailyn', tp_id, 'Culpa cum ea. Quia explicabo est assumenda et corrupti recusandae. Fugit iure qui autem. Laboriosam qui cumque modi qui sed odio iure.', 'Culpa cum ea. Quia explicabo est assumenda et corrupti recusandae. Fugit iure qui autem. Laboriosam qui cumque modi qui sed odio iure.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '817.486.9602 x3331';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171258', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Dorian McClure') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Richmond', tp_id, 'Dignissimos veritatis enim eius quas. Ut animi rerum tenetur ad omnis aut. Laborum deleniti quia consequuntur. Quia amet nostrum qui exercitationem.', 'Dignissimos veritatis enim eius quas. Ut animi rerum tenetur ad omnis aut. Laborum deleniti quia consequuntur. Quia amet nostrum qui exercitationem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-495-725-0863';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170313', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Rita Kshlerin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jaylin', tp_id, 'Est laudantium quia consequuntur saepe temporibus officiis eius. Et rerum ad aut sit dicta iusto. Odit debitis corporis molestiae molestiae nisi neque recusandae. Id ea temporibus. Quod consequuntur dolorem aut repellendus vel eius.', 'Est laudantium quia consequuntur saepe temporibus officiis eius. Et rerum ad aut sit dicta iusto. Odit debitis corporis molestiae molestiae nisi neque recusandae. Id ea temporibus. Quod consequuntur dolorem aut repellendus vel eius.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(507) 250-2892';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170508', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Tamara Klocko') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vince', tp_id, 'Quaerat aut dolor porro consequatur praesentium quibusdam aut. Quisquam possimus eum fuga. Aliquam minima temporibus. Aut perferendis enim dolor quam error.', 'Quaerat aut dolor porro consequatur praesentium quibusdam aut. Quisquam possimus eum fuga. Aliquam minima temporibus. Aut perferendis enim dolor quam error.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '901.602.4698 x352';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120172014', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Gregorio Goldner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rosanna', tp_id, 'Accusamus veritatis facilis dolorem. Quae necessitatibus sed. Exercitationem dolor sint et. Numquam laborum eaque quasi. Expedita nisi sint voluptas. Dolorem quia voluptate.', 'Accusamus veritatis facilis dolorem. Quae necessitatibus sed. Exercitationem dolor sint et. Numquam laborum eaque quasi. Expedita nisi sint voluptas. Dolorem quia voluptate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-550-161-0080';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220172310', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sasha Cremin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carlos', tp_id, 'Tenetur voluptatem eaque ab. Reiciendis qui est. Odio velit necessitatibus deserunt veritatis. Qui magnam placeat non nemo beatae nesciunt praesentium.', 'Tenetur voluptatem eaque ab. Reiciendis qui est. Odio velit necessitatibus deserunt veritatis. Qui magnam placeat non nemo beatae nesciunt praesentium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '393-083-5773 x53178';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170504', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hershel Flatley') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Hester', tp_id, 'Non et consequuntur. Corporis facilis quisquam. Omnis ut libero dolores. Sunt ut incidunt asperiores suscipit aut velit. Hic assumenda atque corrupti excepturi est delectus.', 'Non et consequuntur. Corporis facilis quisquam. Omnis ut libero dolores. Sunt ut incidunt asperiores suscipit aut velit. Hic assumenda atque corrupti excepturi est delectus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-661-716-8456 x36770';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120171722', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Nelson Schuppe') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kaitlyn', tp_id, 'Et exercitationem ipsum est non quis. Cumque et aut quisquam consectetur explicabo voluptates quas. Voluptate voluptas vel quidem. Sunt dolorem veniam.', 'Et exercitationem ipsum est non quis. Cumque et aut quisquam consectetur explicabo voluptates quas. Voluptate voluptas vel quidem. Sunt dolorem veniam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '990.487.2615';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170428', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Wilton Beier') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rodolfo', tp_id, 'Quidem est voluptatibus ex. At nihil cum exercitationem et. Excepturi cupiditate praesentium iusto ex fugit. Voluptatem sit minus fugit. Veniam molestias facere iusto sit.', 'Quidem est voluptatibus ex. At nihil cum exercitationem et. Excepturi cupiditate praesentium iusto ex fugit. Voluptatem sit minus fugit. Veniam molestias facere iusto sit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '407-369-4725';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120172200', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bud Kiehn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'April', tp_id, 'Et sit aut. Voluptatem veritatis officiis est et natus molestias non. Provident accusantium debitis. Quia deleniti vel molestiae dignissimos nesciunt pariatur nemo. Fugiat dolorem et.', 'Et sit aut. Voluptatem veritatis officiis est et natus molestias non. Provident accusantium debitis. Quia deleniti vel molestiae dignissimos nesciunt pariatur nemo. Fugiat dolorem et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '850-372-0957 x965';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171846', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Regan Lind') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lelah', tp_id, 'Ut sed exercitationem enim modi soluta asperiores corporis. Qui enim et occaecati. Cupiditate qui expedita. Praesentium rem consequatur. Eaque harum fugiat. Aperiam neque cupiditate.', 'Ut sed exercitationem enim modi soluta asperiores corporis. Qui enim et occaecati. Cupiditate qui expedita. Praesentium rem consequatur. Eaque harum fugiat. Aperiam neque cupiditate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '186.017.9737';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170118', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Keagan Donnelly III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Oran', tp_id, 'Ipsam expedita et. Quod laudantium est doloribus. Reiciendis ipsam eos assumenda at. Rerum iusto quia eum eos harum magnam. Quis aut aut maxime ex.', 'Ipsam expedita et. Quod laudantium est doloribus. Reiciendis ipsam eos assumenda at. Rerum iusto quia eum eos harum magnam. Quis aut aut maxime ex.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(160) 407-1288';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120170451', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mallie Orn III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Myrl', tp_id, 'Non similique cum consequuntur itaque debitis officia aut. Omnis totam cum fuga est. Blanditiis recusandae alias veritatis eum. Pariatur molestiae expedita.', 'Non similique cum consequuntur itaque debitis officia aut. Omnis totam cum fuga est. Blanditiis recusandae alias veritatis eum. Pariatur molestiae expedita.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(153) 107-0621 x7646';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120171243', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Andreanne Kozey') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marshall', tp_id, 'Odio sit quaerat. Architecto minima tenetur voluptates. Aut ea nesciunt voluptates. Odit atque pariatur nemo ea explicabo et.', 'Odio sit quaerat. Architecto minima tenetur voluptates. Aut ea nesciunt voluptates. Odit atque pariatur nemo ea explicabo et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '130.938.3618 x913';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120171827', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Salvador Gulgowski III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Thalia', tp_id, 'Quae porro repellat illum eveniet modi voluptatem dicta. Consequatur placeat sed iure vitae ex voluptas libero. Et repudiandae quo incidunt molestiae. Consequatur consequuntur veniam deleniti sit in.', 'Quae porro repellat illum eveniet modi voluptatem dicta. Consequatur placeat sed iure vitae ex voluptas libero. Et repudiandae quo incidunt molestiae. Consequatur consequuntur veniam deleniti sit in.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '381.759.1652';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171357', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rosalee Rippin MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ian', tp_id, 'Odit deserunt voluptate. Rem est sit quam aut et qui voluptas. Molestiae non similique maxime. Qui cupiditate deleniti soluta quisquam eaque nobis perspiciatis. Aut quas corrupti sint in temporibus occaecati. Saepe omnis sed sapiente magnam aperiam.', 'Odit deserunt voluptate. Rem est sit quam aut et qui voluptas. Molestiae non similique maxime. Qui cupiditate deleniti soluta quisquam eaque nobis perspiciatis. Aut quas corrupti sint in temporibus occaecati. Saepe omnis sed sapiente magnam aperiam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(897) 946-6675';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171014', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dianna Willms') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Trinity', tp_id, 'Et ipsa nulla enim perspiciatis repellat. Tempore nostrum assumenda facilis. Autem excepturi sed. Consectetur qui magni eligendi ullam error similique nisi. Est et qui nam unde.', 'Et ipsa nulla enim perspiciatis repellat. Tempore nostrum assumenda facilis. Autem excepturi sed. Consectetur qui magni eligendi ullam error similique nisi. Est et qui nam unde.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-846-949-7702 x0877';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171924', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Cathy Metz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brian', tp_id, 'Eos in recusandae voluptatem consequuntur. Iure sint vitae. Id velit sapiente amet nemo temporibus quia. Dicta sit nesciunt et dolorem.', 'Eos in recusandae voluptatem consequuntur. Iure sint vitae. Id velit sapiente amet nemo temporibus quia. Dicta sit nesciunt et dolorem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-997-200-6837';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171809', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Linda Prosacco DDS') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ashlee', tp_id, 'Quo voluptas totam reprehenderit cumque aut. Quo cum iusto voluptatibus accusamus minima. Ab fuga eaque. Accusamus dolorem rerum qui.', 'Quo voluptas totam reprehenderit cumque aut. Quo cum iusto voluptatibus accusamus minima. Ab fuga eaque. Accusamus dolorem rerum qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '230-768-6164';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120171334', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Clarissa Anderson III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Mae', tp_id, 'Fuga inventore numquam sint omnis ut et. Ad ea nulla. Qui possimus tempore at est vitae aut. Architecto illum odit enim qui. Ea iure delectus voluptas qui recusandae aperiam.', 'Fuga inventore numquam sint omnis ut et. Ad ea nulla. Qui possimus tempore at est vitae aut. Architecto illum odit enim qui. Ea iure delectus voluptas qui recusandae aperiam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '714-243-6907 x5069';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120170058', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Elvie Wunsch') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cora', tp_id, 'Alias consequatur fuga et eveniet iure aut ratione. Odit omnis sed quidem cumque. Nihil aperiam commodi provident reiciendis. Vitae itaque est. Ut cupiditate tenetur esse id voluptates fugit. Voluptate consequuntur voluptas accusamus.', 'Alias consequatur fuga et eveniet iure aut ratione. Odit omnis sed quidem cumque. Nihil aperiam commodi provident reiciendis. Vitae itaque est. Ut cupiditate tenetur esse id voluptates fugit. Voluptate consequuntur voluptas accusamus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '310-876-6131 x857';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120172216', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alva Langworth') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Francis', tp_id, 'Nostrum repudiandae et dignissimos autem soluta iusto. Saepe sapiente harum et. Saepe rerum dolor dolores. Explicabo repellat cum libero hic qui.', 'Nostrum repudiandae et dignissimos autem soluta iusto. Saepe sapiente harum et. Saepe rerum dolor dolores. Explicabo repellat cum libero hic qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-631-251-3287';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171536', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sheila Kertzmann II') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gaetano', tp_id, 'Iste quo voluptas quibusdam est est repellat. Sed delectus similique illo sequi explicabo enim. Eaque vitae dolores atque eos. Corporis alias et odio quia quaerat et. Quidem sint sed repellat quae. Eveniet tempora aut eius.', 'Iste quo voluptas quibusdam est est repellat. Sed delectus similique illo sequi explicabo enim. Eaque vitae dolores atque eos. Corporis alias et odio quia quaerat et. Quidem sint sed repellat quae. Eveniet tempora aut eius.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-540-893-0170 x92129';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120171739', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Dameon Deckow') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elwyn', tp_id, 'Ut architecto eaque ducimus debitis. Nihil voluptas qui voluptate nesciunt quia modi inventore. Consequatur consequatur optio aut voluptas veniam. Maiores ducimus veniam est ut atque magnam officiis. Iste eligendi esse quia. Ea qui voluptatem corporis porro.', 'Ut architecto eaque ducimus debitis. Nihil voluptas qui voluptate nesciunt quia modi inventore. Consequatur consequatur optio aut voluptas veniam. Maiores ducimus veniam est ut atque magnam officiis. Iste eligendi esse quia. Ea qui voluptatem corporis porro.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(997) 378-3664 x003';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120170320', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Gerald Crist') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Minnie', tp_id, 'Commodi laboriosam nostrum. Est consequuntur corporis placeat. Ratione repellendus vitae dicta natus odio nihil minus. Illum omnis qui non exercitationem. Et porro ut molestiae ea doloremque.', 'Commodi laboriosam nostrum. Est consequuntur corporis placeat. Ratione repellendus vitae dicta natus odio nihil minus. Illum omnis qui non exercitationem. Et porro ut molestiae ea doloremque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '438-847-3189';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170656', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Viviane Schroeder Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Darian', tp_id, 'Nulla voluptate magnam. Maiores rerum rem reiciendis. Rerum dolorem nisi. Explicabo id repellendus optio aut est et exercitationem. Aut et magni animi unde rerum autem.', 'Nulla voluptate magnam. Maiores rerum rem reiciendis. Rerum dolorem nisi. Explicabo id repellendus optio aut est et exercitationem. Aut et magni animi unde rerum autem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-842-969-7835';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170404', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Fanny Collins') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gideon', tp_id, 'Unde ducimus commodi sed facilis sit maiores possimus. Asperiores possimus qui. Repellendus occaecati molestias cum voluptates. Aliquam et eius voluptatibus dolor accusamus soluta hic. Doloribus eligendi repellat. Sit voluptates incidunt.', 'Unde ducimus commodi sed facilis sit maiores possimus. Asperiores possimus qui. Repellendus occaecati molestias cum voluptates. Aliquam et eius voluptatibus dolor accusamus soluta hic. Doloribus eligendi repellat. Sit voluptates incidunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '822.953.6307 x34186';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120171322', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jewel Kuhic') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Avis', tp_id, 'Unde vero aut iure quisquam. Et saepe id velit. Nihil repellendus voluptates qui quia omnis ea. Vel a dolores assumenda nam dignissimos hic eum. Velit eveniet quibusdam harum consequatur nostrum.', 'Unde vero aut iure quisquam. Et saepe id velit. Nihil repellendus voluptates qui quia omnis ea. Vel a dolores assumenda nam dignissimos hic eum. Velit eveniet quibusdam harum consequatur nostrum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(912) 118-7484 x1821';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170654', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kylie Hagenes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Eloy', tp_id, 'Nemo et quibusdam beatae deleniti omnis recusandae cum. Optio repellendus sed quidem blanditiis explicabo ut est. Repudiandae fugiat exercitationem molestiae quis. Autem ab dolorem ea quaerat quos.', 'Nemo et quibusdam beatae deleniti omnis recusandae cum. Optio repellendus sed quidem blanditiis explicabo ut est. Repudiandae fugiat exercitationem molestiae quis. Autem ab dolorem ea quaerat quos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '488-198-7029';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120170052', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Brandt Smith') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Chaya', tp_id, 'Id exercitationem minima saepe. Quas quia quibusdam. Qui libero quia porro ullam esse. Hic explicabo magnam eos odit laudantium.', 'Id exercitationem minima saepe. Quas quia quibusdam. Qui libero quia porro ullam esse. Hic explicabo magnam eos odit laudantium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '892-005-3700';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170809', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Maynard Schumm') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Harrison', tp_id, 'Ea sit consectetur architecto quo autem. Eveniet deserunt atque est enim molestiae. Incidunt voluptas facilis ullam itaque iure velit. Ratione omnis quo ullam.', 'Ea sit consectetur architecto quo autem. Eveniet deserunt atque est enim molestiae. Incidunt voluptas facilis ullam itaque iure velit. Ratione omnis quo ullam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '923.381.4547';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120172249', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dayne Shields') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jessy', tp_id, 'Consequatur quo est voluptatem doloremque quis ab. Ut omnis nobis possimus quaerat quos non. Esse et et impedit. Officia incidunt vitae omnis et consectetur sed nihil.', 'Consequatur quo est voluptatem doloremque quis ab. Ut omnis nobis possimus quaerat quos non. Esse et et impedit. Officia incidunt vitae omnis et consectetur sed nihil.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '907-023-2284 x436';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171457', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Amara Heathcote') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ali', tp_id, 'Omnis ut adipisci commodi pariatur quo. Voluptas rerum sit eos eos corrupti architecto nihil. Sint qui sit dolorem velit provident. Animi et eaque optio exercitationem. Ducimus ut non sed.', 'Omnis ut adipisci commodi pariatur quo. Voluptas rerum sit eos eos corrupti architecto nihil. Sint qui sit dolorem velit provident. Animi et eaque optio exercitationem. Ducimus ut non sed.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(115) 515-7587 x93716';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171918', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Herminia Predovic V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alessandra', tp_id, 'Veniam cum suscipit iusto error repellendus. Accusamus iusto doloribus nostrum harum praesentium doloremque ducimus. Hic illo sed iusto molestiae eos. Ea qui voluptatem odit consequuntur laudantium similique velit. Aut quo excepturi et a sapiente aspernatur occaecati.', 'Veniam cum suscipit iusto error repellendus. Accusamus iusto doloribus nostrum harum praesentium doloremque ducimus. Hic illo sed iusto molestiae eos. Ea qui voluptatem odit consequuntur laudantium similique velit. Aut quo excepturi et a sapiente aspernatur occaecati.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-662-902-5556 x06755';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171544', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mackenzie Bruen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rasheed', tp_id, 'Repudiandae dignissimos voluptas nihil possimus et. Iusto sint voluptas. Dicta iure saepe maxime quo laborum non numquam. Fugiat et modi eveniet vel corrupti maxime voluptatibus. Voluptatem optio labore consequatur cum.', 'Repudiandae dignissimos voluptas nihil possimus et. Iusto sint voluptas. Dicta iure saepe maxime quo laborum non numquam. Fugiat et modi eveniet vel corrupti maxime voluptatibus. Voluptatem optio labore consequatur cum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '996-002-7356';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171502', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Grace Koss IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rick', tp_id, 'Aut dignissimos praesentium. Amet ad earum et debitis voluptatibus ut nobis. Omnis eos ratione id dicta. Delectus nam ea atque aliquam.', 'Aut dignissimos praesentium. Amet ad earum et debitis voluptatibus ut nobis. Omnis eos ratione id dicta. Delectus nam ea atque aliquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '399-613-2449 x4168';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120172235', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Reece Hermiston') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lola', tp_id, 'Dolore ut aspernatur iusto sit. Est voluptatum tempora repellat in. Temporibus non delectus quo nam quaerat. Nobis quod libero quibusdam est ullam explicabo.', 'Dolore ut aspernatur iusto sit. Est voluptatum tempora repellat in. Temporibus non delectus quo nam quaerat. Nobis quod libero quibusdam est ullam explicabo.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(404) 650-5071 x881';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171123', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Andreanne Conn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Theresia', tp_id, 'Dolore dolor pariatur. Ea qui dolore velit voluptatem et. Ab iste aspernatur consectetur dolores totam accusamus non. Excepturi ea quaerat.', 'Dolore dolor pariatur. Ea qui dolore velit voluptatem et. Ab iste aspernatur consectetur dolores totam accusamus non. Excepturi ea quaerat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(416) 870-6766 x0929';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171026', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Blaze Fahey') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jana', tp_id, 'Sunt dolor expedita ipsam ut repudiandae et fuga. Sit tenetur non culpa eos. Optio impedit est ut quis non non. Quis ad ea et.', 'Sunt dolor expedita ipsam ut repudiandae et fuga. Sit tenetur non culpa eos. Optio impedit est ut quis non non. Quis ad ea et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '304.135.8119 x35317';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171704', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Johnpaul Nikolaus') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Devante', tp_id, 'Quibusdam quam id. At consequatur perspiciatis est omnis maiores porro nulla. Accusamus neque ut maxime tenetur. Molestiae repudiandae earum nobis accusantium ratione voluptatem.', 'Quibusdam quam id. At consequatur perspiciatis est omnis maiores porro nulla. Accusamus neque ut maxime tenetur. Molestiae repudiandae earum nobis accusantium ratione voluptatem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-142-119-4487';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171521', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Garret Friesen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Everette', tp_id, 'Vel ab minima quia voluptates. Eligendi consequuntur ex. Sunt voluptas ipsa. Dolor consequatur deleniti doloremque dolorem.', 'Vel ab minima quia voluptates. Eligendi consequuntur ex. Sunt voluptas ipsa. Dolor consequatur deleniti doloremque dolorem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '251-395-0497';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220172251', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Jermaine Corkery') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Noemi', tp_id, 'Velit optio quos et expedita et illo maiores. Suscipit quis deserunt omnis non. Libero doloribus dicta consequatur et corporis et. Aliquid dolor veritatis quis perferendis aut ut.', 'Velit optio quos et expedita et illo maiores. Suscipit quis deserunt omnis non. Libero doloribus dicta consequatur et corporis et. Aliquid dolor veritatis quis perferendis aut ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '865-505-0608 x7642';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120171005', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Korey Wilderman PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Loren', tp_id, 'Veritatis sed eos in ea id animi. Voluptatem voluptatem nisi. Quos aut qui et ratione. Fugit exercitationem quod excepturi odit corporis repudiandae. Architecto consequatur recusandae eius voluptates aliquid consequatur. Quam accusantium nemo sequi esse aperiam dignissimos voluptate.', 'Veritatis sed eos in ea id animi. Voluptatem voluptatem nisi. Quos aut qui et ratione. Fugit exercitationem quod excepturi odit corporis repudiandae. Architecto consequatur recusandae eius voluptates aliquid consequatur. Quam accusantium nemo sequi esse aperiam dignissimos voluptate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '580.016.3443 x73779';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120171848', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Darrin Little') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Selmer', tp_id, 'Et earum est quis repudiandae. Aperiam in aspernatur nobis placeat eveniet iste officiis. Aut nostrum est sunt sed at. Iste ab eaque suscipit enim optio debitis. Culpa deleniti quam tempora.', 'Et earum est quis repudiandae. Aperiam in aspernatur nobis placeat eveniet iste officiis. Aut nostrum est sunt sed at. Iste ab eaque suscipit enim optio debitis. Culpa deleniti quam tempora.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(303) 535-8332 x06123';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170218', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Akeem Herzog IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ole', tp_id, 'Itaque dicta quis et reiciendis cupiditate repudiandae. Soluta eos et quaerat rem. Eos reprehenderit quo quas sint earum et et. Ut veritatis rerum voluptate facilis deleniti dolor maxime. Et aliquam sed sit sequi quisquam.', 'Itaque dicta quis et reiciendis cupiditate repudiandae. Soluta eos et quaerat rem. Eos reprehenderit quo quas sint earum et et. Ut veritatis rerum voluptate facilis deleniti dolor maxime. Et aliquam sed sit sequi quisquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '328.208.8569';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120170707', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Karina Sporer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Anika', tp_id, 'Eum nesciunt necessitatibus nostrum dignissimos eius quo odio. Ut explicabo hic est blanditiis voluptate dolorem perferendis. Unde rerum non. Dolore deleniti earum minima consequatur non fugiat. Harum eligendi magni est aut quod delectus et. Dolorem rerum magni.', 'Eum nesciunt necessitatibus nostrum dignissimos eius quo odio. Ut explicabo hic est blanditiis voluptate dolorem perferendis. Unde rerum non. Dolore deleniti earum minima consequatur non fugiat. Harum eligendi magni est aut quod delectus et. Dolorem rerum magni.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '410.949.5954';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120170355', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Arielle Barton') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Joanny', tp_id, 'Quia ducimus maiores molestiae. Non esse accusamus ut dolores et nam. Voluptatem magni quos inventore veritatis. Perspiciatis enim voluptatem sed. Ipsa fugiat beatae asperiores molestias eveniet qui praesentium.', 'Quia ducimus maiores molestiae. Non esse accusamus ut dolores et nam. Voluptatem magni quos inventore veritatis. Perspiciatis enim voluptatem sed. Ipsa fugiat beatae asperiores molestias eveniet qui praesentium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '810.623.5098';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171052', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Molly Heathcote') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carmelo', tp_id, 'Quo quae autem nesciunt. Voluptates fugiat ratione molestiae incidunt. Ducimus ut aliquam dolores ratione unde aut. Fugiat hic dolor in est.', 'Quo quae autem nesciunt. Voluptates fugiat ratione molestiae incidunt. Ducimus ut aliquam dolores ratione unde aut. Fugiat hic dolor in est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '314.034.7674 x4726';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120170356', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cletus Raynor') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Syble', tp_id, 'Eligendi non laborum et omnis reiciendis. Quos debitis maxime perspiciatis sit ea error dolorum. Tenetur necessitatibus perferendis et quis aut natus qui. Nihil consequatur molestiae tempora necessitatibus iusto ipsa qui. Id perspiciatis et nihil reprehenderit qui commodi. Quia consequatur laboriosam impedit.', 'Eligendi non laborum et omnis reiciendis. Quos debitis maxime perspiciatis sit ea error dolorum. Tenetur necessitatibus perferendis et quis aut natus qui. Nihil consequatur molestiae tempora necessitatibus iusto ipsa qui. Id perspiciatis et nihil reprehenderit qui commodi. Quia consequatur laboriosam impedit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '100.124.9606';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120172020', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carmela Lang') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kraig', tp_id, 'Corporis sit voluptatem magnam qui. Et repudiandae dicta sapiente repellat laudantium eaque. Ut et quaerat accusantium eum ea. Nobis sed quam sed nostrum et inventore commodi.', 'Corporis sit voluptatem magnam qui. Et repudiandae dicta sapiente repellat laudantium eaque. Ut et quaerat accusantium eum ea. Nobis sed quam sed nostrum et inventore commodi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(544) 321-9595';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171312', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Fiona Weissnat') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Regan', tp_id, 'Iure nulla sint reprehenderit voluptatum modi est. Tempore eum vero sapiente laborum incidunt maiores. Totam laborum occaecati dolorem dolor et similique autem. Voluptatibus fugiat ipsum aut optio consectetur. Quidem voluptatem ut sed. Eaque suscipit quia numquam.', 'Iure nulla sint reprehenderit voluptatum modi est. Tempore eum vero sapiente laborum incidunt maiores. Totam laborum occaecati dolorem dolor et similique autem. Voluptatibus fugiat ipsum aut optio consectetur. Quidem voluptatem ut sed. Eaque suscipit quia numquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '550-719-9967';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171719', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Clair Sanford') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kay', tp_id, 'Provident explicabo quos quis. Quasi et asperiores aut ut. Facere laboriosam ut atque nisi dolores ex molestiae. Dolore magnam saepe tempora omnis ut laudantium. Nostrum earum dolorem qui impedit suscipit soluta corporis. Sunt accusantium laudantium excepturi cupiditate.', 'Provident explicabo quos quis. Quasi et asperiores aut ut. Facere laboriosam ut atque nisi dolores ex molestiae. Dolore magnam saepe tempora omnis ut laudantium. Nostrum earum dolorem qui impedit suscipit soluta corporis. Sunt accusantium laudantium excepturi cupiditate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(548) 304-6253 x304';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170343', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kristina Kessler V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bernadine', tp_id, 'Aut nihil expedita. Praesentium facere corporis non ipsa. Est quo molestias praesentium. Porro et fuga numquam et enim maxime. Totam minus cumque dolores asperiores deleniti numquam.', 'Aut nihil expedita. Praesentium facere corporis non ipsa. Est quo molestias praesentium. Porro et fuga numquam et enim maxime. Totam minus cumque dolores asperiores deleniti numquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '535.136.8199 x5778';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120172346', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Erik Rolfson III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Clara', tp_id, 'Accusantium et nobis qui culpa. Est unde neque quia. Aliquam aliquid aut laborum numquam. Nam labore doloribus.', 'Accusantium et nobis qui culpa. Est unde neque quia. Aliquam aliquid aut laborum numquam. Nam labore doloribus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-220-878-4720 x20411';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170628', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Roma Mueller') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elta', tp_id, 'Velit laudantium facilis in aspernatur. Neque facere aliquam et. Qui tempora voluptatum possimus omnis eligendi. Delectus vero sit. Ratione nulla voluptas quis nam repellat nihil. Quia repellendus voluptatem.', 'Velit laudantium facilis in aspernatur. Neque facere aliquam et. Qui tempora voluptatum possimus omnis eligendi. Delectus vero sit. Ratione nulla voluptas quis nam repellat nihil. Quia repellendus voluptatem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '829-323-9126';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170324', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alivia Wilderman IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jensen', tp_id, 'Est sunt explicabo ut. Id iure necessitatibus. Eum accusamus qui quas. Totam vero accusantium quo quam soluta. Velit nisi esse aut sed aut modi voluptas.', 'Est sunt explicabo ut. Id iure necessitatibus. Eum accusamus qui quas. Totam vero accusantium quo quam soluta. Velit nisi esse aut sed aut modi voluptas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(931) 801-7260';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170239', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Damian O''Connell DDS') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lucy', tp_id, 'Facilis sed et veniam rerum. Aut numquam ad repellat harum recusandae enim at. Ut cum aut. Consequatur reprehenderit perspiciatis aliquam aut sapiente et. Qui aut id consequatur quos cum. Amet non iste in molestias et asperiores ut.', 'Facilis sed et veniam rerum. Aut numquam ad repellat harum recusandae enim at. Ut cum aut. Consequatur reprehenderit perspiciatis aliquam aut sapiente et. Qui aut id consequatur quos cum. Amet non iste in molestias et asperiores ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-464-465-7340 x393';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170434', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Arden Gerhold') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Melba', tp_id, 'Quo sint voluptas occaecati sit voluptates. Laborum et voluptas quia perferendis odit. Perspiciatis dolorem inventore magnam accusamus sint eaque. Porro vel cupiditate perspiciatis fugiat consequatur velit. Architecto sit et error eveniet cupiditate. Autem qui explicabo in eum.', 'Quo sint voluptas occaecati sit voluptates. Laborum et voluptas quia perferendis odit. Perspiciatis dolorem inventore magnam accusamus sint eaque. Porro vel cupiditate perspiciatis fugiat consequatur velit. Architecto sit et error eveniet cupiditate. Autem qui explicabo in eum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-842-004-4978 x04179';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170329', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lola Greenfelder') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Mertie', tp_id, 'Quibusdam sunt voluptatibus eveniet enim. Nihil reprehenderit dignissimos. Praesentium laboriosam expedita eum impedit. Animi adipisci vel qui. Eum eligendi autem at aliquam distinctio.', 'Quibusdam sunt voluptatibus eveniet enim. Nihil reprehenderit dignissimos. Praesentium laboriosam expedita eum impedit. Animi adipisci vel qui. Eum eligendi autem at aliquam distinctio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '194-029-4127 x558';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120170346', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kayley Schroeder') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brady', tp_id, 'Ut dolorem incidunt voluptas voluptatem enim. Est nihil aut sit nostrum et. Amet impedit iste ratione qui. Eos maxime officia nemo rerum dolores possimus eius. Esse rem ab aut voluptatem quos. Totam natus est unde nihil.', 'Ut dolorem incidunt voluptas voluptatem enim. Est nihil aut sit nostrum et. Amet impedit iste ratione qui. Eos maxime officia nemo rerum dolores possimus eius. Esse rem ab aut voluptatem quos. Totam natus est unde nihil.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(420) 082-7180 x440';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220171337', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hildegard Bogisich Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rodrick', tp_id, 'Et aut voluptatem. Aspernatur iusto saepe autem non reprehenderit. Sed vel sit. Veniam quis ex suscipit. Ut nam minima qui magni. Doloribus consequuntur at.', 'Et aut voluptatem. Aspernatur iusto saepe autem non reprehenderit. Sed vel sit. Veniam quis ex suscipit. Ut nam minima qui magni. Doloribus consequuntur at.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '127-674-2882 x206';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220172121', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Aliza Orn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jeanne', tp_id, 'Corporis voluptatum ab ad. Vero assumenda saepe repellendus non sint. Rem quam velit. Dignissimos voluptatem et ut tenetur qui. Ea aut quod nihil consequatur. Ut qui aliquid possimus placeat.', 'Corporis voluptatum ab ad. Vero assumenda saepe repellendus non sint. Rem quam velit. Dignissimos voluptatem et ut tenetur qui. Ea aut quod nihil consequatur. Ut qui aliquid possimus placeat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-487-991-3475 x95612';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120171532', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Piper Lesch') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Velva', tp_id, 'Omnis sapiente dolorum. Tenetur aliquid laborum laudantium. Consequatur consectetur illum dicta non quod eligendi. Quis beatae facere optio rerum omnis.', 'Omnis sapiente dolorum. Tenetur aliquid laborum laudantium. Consequatur consectetur illum dicta non quod eligendi. Quis beatae facere optio rerum omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '203-074-2020 x7268';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120171141', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Boyd Shanahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jasmin', tp_id, 'Nam facere voluptatum non veritatis voluptatem. Non ipsam aut ipsa. Molestiae itaque adipisci dolores culpa nemo. Et rem id. Ut cumque laborum cum labore. Ipsa totam aut omnis.', 'Nam facere voluptatum non veritatis voluptatem. Non ipsam aut ipsa. Molestiae itaque adipisci dolores culpa nemo. Et rem id. Ut cumque laborum cum labore. Ipsa totam aut omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(727) 885-5699 x0705';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120170321', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kenton Zulauf') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kathryn', tp_id, 'Ab ad similique amet. Ea omnis aut. Ut est sapiente non suscipit. Est repellendus perspiciatis recusandae cupiditate nostrum sit qui.', 'Ab ad similique amet. Ea omnis aut. Ut est sapiente non suscipit. Est repellendus perspiciatis recusandae cupiditate nostrum sit qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(737) 580-3367 x76343';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171638', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Carter Stiedemann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Federico', tp_id, 'Recusandae nihil nesciunt placeat in architecto porro. Nulla natus et vel sunt. Reprehenderit sed vitae ipsam. Consectetur mollitia odio corporis accusantium quia facilis rerum.', 'Recusandae nihil nesciunt placeat in architecto porro. Nulla natus et vel sunt. Reprehenderit sed vitae ipsam. Consectetur mollitia odio corporis accusantium quia facilis rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '842.833.9264';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220172229', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Karlee Olson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Danial', tp_id, 'Quam excepturi asperiores amet. Itaque libero provident eveniet aut consequatur necessitatibus. Veniam qui cumque modi nostrum repudiandae officia ea. Dolore dignissimos modi voluptatem cum. Et voluptatibus animi repellendus et qui.', 'Quam excepturi asperiores amet. Itaque libero provident eveniet aut consequatur necessitatibus. Veniam qui cumque modi nostrum repudiandae officia ea. Dolore dignissimos modi voluptatem cum. Et voluptatibus animi repellendus et qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-399-211-2730';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171517', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Laury Gutmann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Sherman', tp_id, 'Esse aut voluptatem est. Voluptatem totam sapiente suscipit aliquam ut nulla aperiam. Esse iusto distinctio sequi quia et sint beatae. Debitis deleniti harum nam est ut voluptatem.', 'Esse aut voluptatem est. Voluptatem totam sapiente suscipit aliquam ut nulla aperiam. Esse iusto distinctio sequi quia et sint beatae. Debitis deleniti harum nam est ut voluptatem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '667-863-5364';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220171718', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Erich Kling') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Hector', tp_id, 'Sint omnis esse natus enim reprehenderit pariatur. Velit voluptatum saepe reprehenderit magni eos. Eius sit nemo aut dolorum magni. Tempora autem veritatis.', 'Sint omnis esse natus enim reprehenderit pariatur. Velit voluptatum saepe reprehenderit magni eos. Eius sit nemo aut dolorum magni. Tempora autem veritatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '766.933.0124 x773';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120171650', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Gay Dickinson DDS') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Leon', tp_id, 'Amet rerum id cum unde. Perferendis dolores eos quia in sit natus. Aut commodi enim harum. Qui debitis quo non itaque fuga omnis. Doloremque quisquam ad sit est. Ducimus perferendis nobis sapiente rerum error.', 'Amet rerum id cum unde. Perferendis dolores eos quia in sit natus. Aut commodi enim harum. Qui debitis quo non itaque fuga omnis. Doloremque quisquam ad sit est. Ducimus perferendis nobis sapiente rerum error.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(981) 602-7842';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120170338', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Elnora Borer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tiara', tp_id, 'Incidunt ea voluptas voluptas non repellat. Distinctio quae omnis cum optio sint. Consequatur corporis hic at id ut ipsa perspiciatis. Alias quibusdam eaque unde sapiente tempora consequatur est. Et fugit cupiditate ab voluptatibus. Doloremque pariatur exercitationem dolor adipisci velit quis assumenda.', 'Incidunt ea voluptas voluptas non repellat. Distinctio quae omnis cum optio sint. Consequatur corporis hic at id ut ipsa perspiciatis. Alias quibusdam eaque unde sapiente tempora consequatur est. Et fugit cupiditate ab voluptatibus. Doloremque pariatur exercitationem dolor adipisci velit quis assumenda.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '216.384.0233';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120170312', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Oleta Bashirian') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alyce', tp_id, 'Ipsa dolorem maxime ut. Est animi et quod minus debitis. Quo temporibus voluptas voluptatem est. Quod itaque eum voluptatem autem.', 'Ipsa dolorem maxime ut. Est animi et quod minus debitis. Quo temporibus voluptas voluptatem est. Quod itaque eum voluptatem autem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '457-189-1138 x3060';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171026', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Marjorie Parisian') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Nicholas', tp_id, 'In dolore quia voluptatem maxime eius esse id. Aut qui quasi neque culpa non. Sed non voluptates omnis libero minus rem. Accusantium nisi consequuntur optio deserunt et.', 'In dolore quia voluptatem maxime eius esse id. Aut qui quasi neque culpa non. Sed non voluptates omnis libero minus rem. Accusantium nisi consequuntur optio deserunt et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '562-868-0766';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170114', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lora Hoeger') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Amiya', tp_id, 'Et ut ea. Atque facere animi id dignissimos. Aliquam non ea quod velit. Vel alias quia voluptas.', 'Et ut ea. Atque facere animi id dignissimos. Aliquam non ea quod velit. Vel alias quia voluptas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-520-560-2880';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120172154', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Berenice Renner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Maeve', tp_id, 'Aut deserunt optio enim quam nostrum. Deserunt ipsum natus blanditiis tenetur. Iusto adipisci quod. Et ad impedit. Dolores architecto voluptatem aut necessitatibus.', 'Aut deserunt optio enim quam nostrum. Deserunt ipsum natus blanditiis tenetur. Iusto adipisci quod. Et ad impedit. Dolores architecto voluptatem aut necessitatibus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-664-479-5326';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170423', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Piper Waelchi III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Queenie', tp_id, 'Eos nisi deserunt consequatur autem velit. Quia officiis velit. Praesentium voluptas sed incidunt dolores quidem. Sed qui temporibus sunt ipsam.', 'Eos nisi deserunt consequatur autem velit. Quia officiis velit. Praesentium voluptas sed incidunt dolores quidem. Sed qui temporibus sunt ipsam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '772.746.6625';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171751', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Donnell Gaylord') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Annamae', tp_id, 'Enim qui quia consequatur. Quisquam consequatur voluptatem quia qui asperiores. Est quia hic quam. Ipsum soluta et cumque quos. Doloribus deleniti nesciunt corporis debitis.', 'Enim qui quia consequatur. Quisquam consequatur voluptatem quia qui asperiores. Est quia hic quam. Ipsum soluta et cumque quos. Doloribus deleniti nesciunt corporis debitis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(679) 407-7328';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170053', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Soledad Zemlak') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Korey', tp_id, 'Molestiae molestiae qui. Non quod necessitatibus et. Asperiores dolorem ducimus est cupiditate animi earum. Qui cupiditate occaecati non eligendi pariatur.', 'Molestiae molestiae qui. Non quod necessitatibus et. Asperiores dolorem ducimus est cupiditate animi earum. Qui cupiditate occaecati non eligendi pariatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '354.755.4614';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171304', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kaitlyn Mitchell') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Orville', tp_id, 'Facilis aut quae et labore sed doloremque. Itaque laborum ex quia ut ad ducimus fugit. Officiis dolorum est. Velit tempora necessitatibus perferendis voluptas occaecati.', 'Facilis aut quae et labore sed doloremque. Itaque laborum ex quia ut ad ducimus fugit. Officiis dolorum est. Velit tempora necessitatibus perferendis voluptas occaecati.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-722-018-2525 x697';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120171222', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mario Metz V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brennan', tp_id, 'Qui perferendis quas earum eos libero. Quis ipsam possimus rerum dolorum. Aperiam sed voluptatum cupiditate minus adipisci blanditiis beatae. Ipsa dolores eaque aut enim est nisi pariatur.', 'Qui perferendis quas earum eos libero. Quis ipsam possimus rerum dolorum. Aperiam sed voluptatum cupiditate minus adipisci blanditiis beatae. Ipsa dolores eaque aut enim est nisi pariatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '396-019-6040';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120171038', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Zora Durgan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gudrun', tp_id, 'Similique numquam mollitia quo est maxime. Provident voluptatem autem voluptate velit necessitatibus dolorum. Ea reprehenderit aperiam. Assumenda sequi quisquam.', 'Similique numquam mollitia quo est maxime. Provident voluptatem autem voluptate velit necessitatibus dolorum. Ea reprehenderit aperiam. Assumenda sequi quisquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '567.421.5137';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171025', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ruthe Gislason') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tiffany', tp_id, 'Vitae enim illum est explicabo omnis eos. Inventore sed quis sed magnam explicabo. Optio necessitatibus animi adipisci est quasi. Nam blanditiis aut rerum.', 'Vitae enim illum est explicabo omnis eos. Inventore sed quis sed magnam explicabo. Optio necessitatibus animi adipisci est quasi. Nam blanditiis aut rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-377-783-0600 x3197';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120172259', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Danyka Schulist') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ova', tp_id, 'Eum dolore velit saepe tenetur. Voluptatum magnam doloremque mollitia necessitatibus in. Ut occaecati nam nemo repellendus. Quis ut similique cumque. Et et tenetur voluptatem quo voluptatem modi qui. Enim ut quia cupiditate ut laboriosam.', 'Eum dolore velit saepe tenetur. Voluptatum magnam doloremque mollitia necessitatibus in. Ut occaecati nam nemo repellendus. Quis ut similique cumque. Et et tenetur voluptatem quo voluptatem modi qui. Enim ut quia cupiditate ut laboriosam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '965-182-9990 x37779';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171932', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Jay Erdman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elliot', tp_id, 'Aut praesentium veniam. Sunt doloremque quo voluptas. Officiis ex dolorem ipsam eaque cupiditate est. Est consequatur est sit.', 'Aut praesentium veniam. Sunt doloremque quo voluptas. Officiis ex dolorem ipsam eaque cupiditate est. Est consequatur est sit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '398.913.1569 x1307';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120171158', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Trycia Wolf') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Mary', tp_id, 'Quia eum odio consequatur atque ea cum. Aut iusto aliquid. Laudantium doloribus qui. Sit voluptatem soluta nobis. Ab non iusto illum in. Quam voluptas odit ipsa deserunt adipisci earum quidem.', 'Quia eum odio consequatur atque ea cum. Aut iusto aliquid. Laudantium doloribus qui. Sit voluptatem soluta nobis. Ab non iusto illum in. Quam voluptas odit ipsa deserunt adipisci earum quidem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-745-242-7169 x551';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120170401', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Grace Schmeler') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carlie', tp_id, 'Quia expedita optio qui et esse. Voluptas deleniti qui veniam vel nam aut qui. Aut et nemo. Odio reiciendis rerum similique iste. Iste in velit doloribus repudiandae soluta.', 'Quia expedita optio qui et esse. Voluptas deleniti qui veniam vel nam aut qui. Aut et nemo. Odio reiciendis rerum similique iste. Iste in velit doloribus repudiandae soluta.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '869-704-9496 x025';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120170813', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Annabel Krajcik') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Durward', tp_id, 'Autem esse totam assumenda corporis. Reprehenderit voluptatem molestiae et. Perferendis consequatur sint consequatur hic deserunt. Non maiores in et facere eaque. Alias quis reprehenderit sed.', 'Autem esse totam assumenda corporis. Reprehenderit voluptatem molestiae et. Perferendis consequatur sint consequatur hic deserunt. Non maiores in et facere eaque. Alias quis reprehenderit sed.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-384-240-1228';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171713', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Asa Bogisich II') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Stan', tp_id, 'Aperiam quas error sit voluptatum eum. Repudiandae voluptas incidunt praesentium aut fuga. Corrupti delectus eos similique. Corrupti magnam perspiciatis.', 'Aperiam quas error sit voluptatum eum. Repudiandae voluptas incidunt praesentium aut fuga. Corrupti delectus eos similique. Corrupti magnam perspiciatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-932-315-4534';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170454', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Aylin Cassin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kelton', tp_id, 'Non corrupti enim commodi eveniet qui pariatur delectus. Alias in voluptas eveniet nihil vel nesciunt perspiciatis. Quia ut voluptatem repellendus autem ipsa. Eos sed inventore et molestiae ut. Nihil voluptas quod.', 'Non corrupti enim commodi eveniet qui pariatur delectus. Alias in voluptas eveniet nihil vel nesciunt perspiciatis. Quia ut voluptatem repellendus autem ipsa. Eos sed inventore et molestiae ut. Nihil voluptas quod.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '719.443.5250 x1777';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171233', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Zoie Hackett') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Destiny', tp_id, 'Pariatur ad quos qui iusto quo porro. Ut optio et molestiae enim ducimus. Excepturi molestias eaque accusantium qui ab. Qui perferendis dolorem laboriosam. Qui nobis labore ipsa. Dicta velit quo accusamus enim.', 'Pariatur ad quos qui iusto quo porro. Ut optio et molestiae enim ducimus. Excepturi molestias eaque accusantium qui ab. Qui perferendis dolorem laboriosam. Qui nobis labore ipsa. Dicta velit quo accusamus enim.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '678-047-4837';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120172115', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miles McCullough') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Adolphus', tp_id, 'Eaque ut corporis in. Impedit aut quod. Quia error cum veniam voluptas molestias ad ex. Rerum cum sunt quia dolorum nemo vitae et. Sit iure perspiciatis vero. Voluptate quisquam sed expedita illo.', 'Eaque ut corporis in. Impedit aut quod. Quia error cum veniam voluptas molestias ad ex. Rerum cum sunt quia dolorum nemo vitae et. Sit iure perspiciatis vero. Voluptate quisquam sed expedita illo.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(909) 803-5318';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170247', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Charity Nader Jr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carlie', tp_id, 'Omnis asperiores molestias molestiae dolor rem est. Incidunt velit neque laudantium ea asperiores in iusto. Vitae non autem fuga totam sit pariatur. Labore laborum ut et excepturi voluptatem. Qui neque vel pariatur et et maxime voluptatem. Voluptates et aut aut.', 'Omnis asperiores molestias molestiae dolor rem est. Incidunt velit neque laudantium ea asperiores in iusto. Vitae non autem fuga totam sit pariatur. Labore laborum ut et excepturi voluptatem. Qui neque vel pariatur et et maxime voluptatem. Voluptates et aut aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '663-586-6437';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120172312', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Claudia Crona') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Linnie', tp_id, 'Ab odio voluptas amet assumenda. Quasi corrupti qui maiores eos quo. Ipsum aut aut minima debitis nihil repellat. Explicabo deserunt odit cumque a aperiam.', 'Ab odio voluptas amet assumenda. Quasi corrupti qui maiores eos quo. Ipsum aut aut minima debitis nihil repellat. Explicabo deserunt odit cumque a aperiam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '937-005-0828';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120171833', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Weldon Ernser') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gladys', tp_id, 'Ut recusandae ab. Ratione ut est. Quidem error temporibus sed velit sit placeat. Eius corporis similique repellendus.', 'Ut recusandae ab. Ratione ut est. Quidem error temporibus sed velit sit placeat. Eius corporis similique repellendus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(832) 066-6707 x495';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171716', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rosalia Kuphal') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Antwon', tp_id, 'Tempora dolor qui. Fugit qui officiis. Asperiores rerum molestiae eos eveniet magni quaerat voluptas. Cumque quae voluptas eum dolore quibusdam fuga perspiciatis. Cum modi ex sequi cupiditate alias laboriosam. Illo voluptatem fugiat.', 'Tempora dolor qui. Fugit qui officiis. Asperiores rerum molestiae eos eveniet magni quaerat voluptas. Cumque quae voluptas eum dolore quibusdam fuga perspiciatis. Cum modi ex sequi cupiditate alias laboriosam. Illo voluptatem fugiat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '662-684-5716 x083';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170348', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Jenifer Goldner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kallie', tp_id, 'Amet facilis voluptas possimus et officiis. Aliquid et aut sit necessitatibus dolorem voluptas perspiciatis. Quidem aut laboriosam et dicta quas. Ad saepe quo consectetur expedita fugiat consequatur praesentium. Ea dolores asperiores voluptate voluptas eum atque in. Deleniti molestiae expedita ut.', 'Amet facilis voluptas possimus et officiis. Aliquid et aut sit necessitatibus dolorem voluptas perspiciatis. Quidem aut laboriosam et dicta quas. Ad saepe quo consectetur expedita fugiat consequatur praesentium. Ea dolores asperiores voluptate voluptas eum atque in. Deleniti molestiae expedita ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-631-158-0593 x97758';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170510', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Nedra Shanahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vicenta', tp_id, 'Iure vel molestiae totam voluptates nulla non consectetur. Sequi ab fugit non. Sapiente velit doloremque exercitationem. Inventore voluptas sed nihil. Cum et adipisci voluptatum ab et quos.', 'Iure vel molestiae totam voluptates nulla non consectetur. Sequi ab fugit non. Sapiente velit doloremque exercitationem. Inventore voluptas sed nihil. Cum et adipisci voluptatum ab et quos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-187-536-9855';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170208', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lisa Fritsch') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Oscar', tp_id, 'Ut minus quae. Nam sint et qui nobis vero molestiae. Rerum ab quis. Omnis fugit at suscipit et. Pariatur illo eligendi et quisquam et. Aut ut explicabo deleniti consequatur natus qui quia.', 'Ut minus quae. Nam sint et qui nobis vero molestiae. Rerum ab quis. Omnis fugit at suscipit et. Pariatur illo eligendi et quisquam et. Aut ut explicabo deleniti consequatur natus qui quia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '454.990.4867 x94353';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171838', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Margarita Will I') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Arielle', tp_id, 'Voluptatibus soluta impedit sed. Expedita id quis qui soluta rerum quae doloribus. Rerum ut eius a facilis unde temporibus quis. Assumenda quos autem. Repellat sit doloremque nulla animi iure facilis occaecati.', 'Voluptatibus soluta impedit sed. Expedita id quis qui soluta rerum quae doloribus. Rerum ut eius a facilis unde temporibus quis. Assumenda quos autem. Repellat sit doloremque nulla animi iure facilis occaecati.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '299.741.7621 x127';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120171539', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Tevin O''Reilly') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ernestina', tp_id, 'Qui aut reiciendis accusantium consequatur earum. Cupiditate voluptatibus ut eum est laboriosam nam consequuntur. Blanditiis numquam et. Sit voluptatem et. Quis in in deserunt.', 'Qui aut reiciendis accusantium consequatur earum. Cupiditate voluptatibus ut eum est laboriosam nam consequuntur. Blanditiis numquam et. Sit voluptatem et. Quis in in deserunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '959-432-9815';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171443', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Violet Keeling') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Haleigh', tp_id, 'Architecto nobis saepe. Ut ea velit illo. Sapiente aspernatur quia dicta eum necessitatibus et earum. Ut optio sed. Ex expedita eaque reprehenderit consequatur. In ex dolorem voluptatum eos aut.', 'Architecto nobis saepe. Ut ea velit illo. Sapiente aspernatur quia dicta eum necessitatibus et earum. Ut optio sed. Ex expedita eaque reprehenderit consequatur. In ex dolorem voluptatum eos aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '920.244.3019 x340';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120172013', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Caitlyn Zieme') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marco', tp_id, 'Ducimus corporis non quia vitae maiores sit et. Provident facilis veniam recusandae culpa aspernatur sapiente quibusdam. Non vitae accusantium officiis. Voluptas est sed.', 'Ducimus corporis non quia vitae maiores sit et. Provident facilis veniam recusandae culpa aspernatur sapiente quibusdam. Non vitae accusantium officiis. Voluptas est sed.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '705.948.8123 x54075';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170508', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jalen Rutherford') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Freeman', tp_id, 'Fuga et quia aut tempore numquam. Dolorum corrupti est est perferendis asperiores sequi. Amet quia sint nihil perferendis. Eius corporis ducimus voluptates corrupti impedit. Et tempore eos. Dolorum ab quasi reiciendis eaque.', 'Fuga et quia aut tempore numquam. Dolorum corrupti est est perferendis asperiores sequi. Amet quia sint nihil perferendis. Eius corporis ducimus voluptates corrupti impedit. Et tempore eos. Dolorum ab quasi reiciendis eaque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(399) 425-5974';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171718', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Larry Hackett') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jackson', tp_id, 'Explicabo assumenda est earum blanditiis voluptatem optio qui. Dolorem nesciunt laboriosam esse totam et. Consequatur cumque consequatur assumenda mollitia voluptates totam. Velit id vero omnis. Dolores debitis molestiae ut totam minima voluptatum nihil. Sed non aut error libero harum.', 'Explicabo assumenda est earum blanditiis voluptatem optio qui. Dolorem nesciunt laboriosam esse totam et. Consequatur cumque consequatur assumenda mollitia voluptates totam. Velit id vero omnis. Dolores debitis molestiae ut totam minima voluptatum nihil. Sed non aut error libero harum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-927-853-6598';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170738', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'General Hammes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Nelle', tp_id, 'Ut ipsum aliquam. Cum sit aut laudantium non. Autem voluptas esse. Quis ducimus harum non. Harum omnis vitae.', 'Ut ipsum aliquam. Cum sit aut laudantium non. Autem voluptas esse. Quis ducimus harum non. Harum omnis vitae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '245.606.0447 x5436';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170046', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Brandi Dare PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Noelia', tp_id, 'Incidunt eum ut dolores aut et qui est. Voluptates perspiciatis nesciunt commodi rerum eaque ea. Temporibus sunt est. Qui et sint laboriosam.', 'Incidunt eum ut dolores aut et qui est. Voluptates perspiciatis nesciunt commodi rerum eaque ea. Temporibus sunt est. Qui et sint laboriosam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '840.310.8213';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171826', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vinnie Towne V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dejuan', tp_id, 'Iste perspiciatis cumque quia non. Dolore reprehenderit repellendus voluptate voluptas saepe omnis. Aliquam quis occaecati et accusantium. Totam repellendus iure non eum omnis. Ullam autem ipsa. Vero quibusdam minus in.', 'Iste perspiciatis cumque quia non. Dolore reprehenderit repellendus voluptate voluptas saepe omnis. Aliquam quis occaecati et accusantium. Totam repellendus iure non eum omnis. Ullam autem ipsa. Vero quibusdam minus in.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '661.414.3528 x2086';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220170131', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Megane Harvey') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Laila', tp_id, 'Ut voluptates dolorum adipisci quidem fugiat. Delectus autem veniam porro dolore magni. Cumque ea molestiae odit quam blanditiis sit voluptas. Eos voluptates blanditiis vitae alias. Aliquid repudiandae ex porro enim tenetur quis ea.', 'Ut voluptates dolorum adipisci quidem fugiat. Delectus autem veniam porro dolore magni. Cumque ea molestiae odit quam blanditiis sit voluptas. Eos voluptates blanditiis vitae alias. Aliquid repudiandae ex porro enim tenetur quis ea.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '675.352.1073';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171517', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Maureen Ryan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Abe', tp_id, 'Eos cumque consequatur possimus qui fugit. Asperiores id culpa animi magni nemo. Porro et sunt nihil. Nihil aliquam laudantium.', 'Eos cumque consequatur possimus qui fugit. Asperiores id culpa animi magni nemo. Porro et sunt nihil. Nihil aliquam laudantium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '405-288-3981';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120170516', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Magali Fay') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Julien', tp_id, 'Minima inventore reiciendis dolorem aut molestiae omnis. Sunt veniam eius sit soluta. Perferendis eius sit fuga suscipit quam nemo. Dolor corporis quo est corrupti dolorem optio.', 'Minima inventore reiciendis dolorem aut molestiae omnis. Sunt veniam eius sit soluta. Perferendis eius sit fuga suscipit quam nemo. Dolor corporis quo est corrupti dolorem optio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '930-099-9434 x02424';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120170310', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Burdette Metz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Itzel', tp_id, 'Vel molestiae et enim est amet. Atque minus ut quaerat. Omnis est nihil dolor quaerat est. Reiciendis ut nesciunt quia voluptas consectetur id autem. Minima ipsam est illum sunt in aut quas.', 'Vel molestiae et enim est amet. Atque minus ut quaerat. Omnis est nihil dolor quaerat est. Reiciendis ut nesciunt quia voluptas consectetur id autem. Minima ipsam est illum sunt in aut quas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-988-161-6804 x73043';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120172337', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Reva Dibbert') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Haylie', tp_id, 'At distinctio ullam ut iure quis. Eveniet quaerat temporibus quia. Non blanditiis qui molestiae deleniti tempora. Non quaerat dicta consectetur incidunt voluptatum. Consequuntur earum corrupti consequatur saepe. Autem qui quae illum non.', 'At distinctio ullam ut iure quis. Eveniet quaerat temporibus quia. Non blanditiis qui molestiae deleniti tempora. Non quaerat dicta consectetur incidunt voluptatum. Consequuntur earum corrupti consequatur saepe. Autem qui quae illum non.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-902-281-1198 x917';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170715', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Craig Fritsch III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Allan', tp_id, 'Eos qui blanditiis commodi suscipit rerum rerum. Rerum quo nostrum est. Enim facere deleniti. Alias similique placeat eaque. Aut blanditiis quos.', 'Eos qui blanditiis commodi suscipit rerum rerum. Rerum quo nostrum est. Enim facere deleniti. Alias similique placeat eaque. Aut blanditiis quos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '496-889-2945 x727';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120170444', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Claude Green') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ethyl', tp_id, 'Necessitatibus quia velit laudantium dolorum aut doloremque. Dolores est magni libero. Dolores est repellat eos. Sapiente iure voluptate. Culpa enim sequi. Omnis voluptatibus temporibus nulla.', 'Necessitatibus quia velit laudantium dolorum aut doloremque. Dolores est magni libero. Dolores est repellat eos. Sapiente iure voluptate. Culpa enim sequi. Omnis voluptatibus temporibus nulla.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '151.671.1677';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120170037', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Abbey Monahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Chaz', tp_id, 'In ab cumque. Odio dolores voluptas quibusdam dicta voluptatibus perspiciatis. Id eos ea sit nobis numquam ipsa. Aut a ut et maxime adipisci. Quas ab quia deserunt officia velit et est. Ut et corporis nisi similique molestiae.', 'In ab cumque. Odio dolores voluptas quibusdam dicta voluptatibus perspiciatis. Id eos ea sit nobis numquam ipsa. Aut a ut et maxime adipisci. Quas ab quia deserunt officia velit et est. Ut et corporis nisi similique molestiae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(604) 230-1574';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170144', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bessie Bogan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Javier', tp_id, 'Voluptatibus officiis fugiat. Commodi ipsum a. Cupiditate eos sed maxime officiis. Sed dolorem nihil est voluptates.', 'Voluptatibus officiis fugiat. Commodi ipsum a. Cupiditate eos sed maxime officiis. Sed dolorem nihil est voluptates.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-451-664-9328 x694';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120171202', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jackson Oberbrunner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Aiyana', tp_id, 'Enim voluptatem cum sit ut non. Aliquid dolor dignissimos. Ut enim sed id aliquam. Cumque at facilis explicabo modi deserunt.', 'Enim voluptatem cum sit ut non. Aliquid dolor dignissimos. Ut enim sed id aliquam. Cumque at facilis explicabo modi deserunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-524-335-2832';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171153', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Kay Douglas') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Giovanny', tp_id, 'Totam eos modi architecto animi optio autem aut. Dicta cumque vero qui cupiditate ipsa veniam. Quasi ratione ad. Aperiam officiis atque quis nesciunt perspiciatis corrupti.', 'Totam eos modi architecto animi optio autem aut. Dicta cumque vero qui cupiditate ipsa veniam. Quasi ratione ad. Aperiam officiis atque quis nesciunt perspiciatis corrupti.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '650-062-3401 x616';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220172149', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Xavier Dickinson DDS') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Triston', tp_id, 'Optio voluptas porro reiciendis tempore ut. Sit qui ad doloribus nemo animi. Est qui inventore magnam esse ad quod. Rerum facilis quia non nemo. Nihil aut optio doloremque. Doloremque ab perferendis voluptas non dolor aspernatur.', 'Optio voluptas porro reiciendis tempore ut. Sit qui ad doloribus nemo animi. Est qui inventore magnam esse ad quod. Rerum facilis quia non nemo. Nihil aut optio doloremque. Doloremque ab perferendis voluptas non dolor aspernatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-799-968-7643';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170345', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Leanna Lesch V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vaughn', tp_id, 'Totam qui eum voluptate mollitia est. Fugiat ipsam in quaerat vel aliquam. Officiis reprehenderit fuga eos tempore enim. Recusandae animi ut delectus dolor est quia. Veniam corporis fugit rerum est labore quidem voluptate.', 'Totam qui eum voluptate mollitia est. Fugiat ipsam in quaerat vel aliquam. Officiis reprehenderit fuga eos tempore enim. Recusandae animi ut delectus dolor est quia. Veniam corporis fugit rerum est labore quidem voluptate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '171-959-1199 x5801';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170707', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Karli Miller IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Camille', tp_id, 'Et tempore quo aut perspiciatis qui repellat. Voluptatem quia ut voluptatem doloribus minus. Delectus sint ut dolores. Id sint repudiandae architecto. Quam ipsum non sequi eligendi. Et sed ut aut incidunt.', 'Et tempore quo aut perspiciatis qui repellat. Voluptatem quia ut voluptatem doloribus minus. Delectus sint ut dolores. Id sint repudiandae architecto. Quam ipsum non sequi eligendi. Et sed ut aut incidunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-157-167-4238 x31945';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171658', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Derick Klocko') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Meda', tp_id, 'Eveniet hic aliquam. Exercitationem eum rerum est. Cupiditate laudantium nemo rerum dolores reiciendis tempora accusantium. Quidem aut omnis magni explicabo voluptates assumenda est. Quo rem est voluptas enim aliquam perferendis in. Dolorem sed ipsam eum corrupti cum velit tempora.', 'Eveniet hic aliquam. Exercitationem eum rerum est. Cupiditate laudantium nemo rerum dolores reiciendis tempora accusantium. Quidem aut omnis magni explicabo voluptates assumenda est. Quo rem est voluptas enim aliquam perferendis in. Dolorem sed ipsam eum corrupti cum velit tempora.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-417-535-3747';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220171419', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Daphney Schimmel') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Beryl', tp_id, 'Sint non consequatur. Ex qui in ducimus porro natus eveniet. Aliquid perferendis magnam expedita voluptas at. Quasi est eos sed eligendi. Repellat laudantium quia ipsa.', 'Sint non consequatur. Ex qui in ducimus porro natus eveniet. Aliquid perferendis magnam expedita voluptas at. Quasi est eos sed eligendi. Repellat laudantium quia ipsa.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '875-940-5955 x648';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171040', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Jakob Kautzer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ursula', tp_id, 'Quis qui consectetur. Tempore aperiam labore at rem quia eum. Voluptates iusto qui dolorem. Autem dolor placeat et quam.', 'Quis qui consectetur. Tempore aperiam labore at rem quia eum. Voluptates iusto qui dolorem. Autem dolor placeat et quam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '507-961-3874';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170258', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Makenna Orn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ida', tp_id, 'Labore quia perferendis dignissimos sint cum. Facere excepturi necessitatibus voluptatem eveniet doloribus quis. Reiciendis omnis odio vel ex tempora laudantium. Asperiores adipisci numquam dolorum quasi natus.', 'Labore quia perferendis dignissimos sint cum. Facere excepturi necessitatibus voluptatem eveniet doloribus quis. Reiciendis omnis odio vel ex tempora laudantium. Asperiores adipisci numquam dolorum quasi natus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(684) 051-7099 x391';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120172342', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Noelia Larkin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Willard', tp_id, 'Fuga libero omnis praesentium. Nisi error voluptates quos neque consequatur eligendi. Ut doloribus voluptates et eos dolore iste hic. Corrupti facilis perspiciatis sit quia est qui doloremque. Ipsa est corrupti totam. Delectus at ducimus omnis.', 'Fuga libero omnis praesentium. Nisi error voluptates quos neque consequatur eligendi. Ut doloribus voluptates et eos dolore iste hic. Corrupti facilis perspiciatis sit quia est qui doloremque. Ipsa est corrupti totam. Delectus at ducimus omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '659.307.9279';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171531', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Karen Gislason') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jovanny', tp_id, 'Ut nesciunt aut. Sapiente et ex est consequatur. Provident sed magni non ut sequi. Eveniet eum voluptatum delectus sint qui. Nobis aut inventore repellendus.', 'Ut nesciunt aut. Sapiente et ex est consequatur. Provident sed magni non ut sequi. Eveniet eum voluptatum delectus sint qui. Nobis aut inventore repellendus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '348.403.1375 x67760';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120171910', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Velva Strosin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dixie', tp_id, 'Adipisci expedita velit vel. Ipsa velit et id et vel explicabo. Sed quas et voluptatum mollitia. Quo ipsum illo neque nulla. Quia beatae aut aliquid ab. Animi pariatur non praesentium.', 'Adipisci expedita velit vel. Ipsa velit et id et vel explicabo. Sed quas et voluptatum mollitia. Quo ipsum illo neque nulla. Quia beatae aut aliquid ab. Animi pariatur non praesentium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(574) 884-8582';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171507', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Monserrat Kohler') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jabari', tp_id, 'Quia molestiae et. Hic dignissimos magni in repellendus voluptatem eos magnam. Cumque officia pariatur doloribus rerum facere eius. Explicabo et enim quis maiores voluptas velit. Aperiam et ea itaque non. Vel et odio repellat ea.', 'Quia molestiae et. Hic dignissimos magni in repellendus voluptatem eos magnam. Cumque officia pariatur doloribus rerum facere eius. Explicabo et enim quis maiores voluptas velit. Aperiam et ea itaque non. Vel et odio repellat ea.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-580-119-3802 x21280';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170416', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Trever Lakin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Geo', tp_id, 'Ut at et. Molestias dicta blanditiis eum dolor. Voluptatibus repudiandae ducimus id dolor minus. Commodi veritatis asperiores exercitationem sint qui rerum deleniti. Fugiat illum adipisci illo laboriosam. Pariatur id et mollitia laboriosam quis distinctio.', 'Ut at et. Molestias dicta blanditiis eum dolor. Voluptatibus repudiandae ducimus id dolor minus. Commodi veritatis asperiores exercitationem sint qui rerum deleniti. Fugiat illum adipisci illo laboriosam. Pariatur id et mollitia laboriosam quis distinctio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-963-394-2305';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170933', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Alexis Towne') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Reid', tp_id, 'Rerum accusamus eum. Eligendi omnis natus occaecati aut velit. Eum non unde. Corrupti officiis consequuntur et earum. Sit quia blanditiis.', 'Rerum accusamus eum. Eligendi omnis natus occaecati aut velit. Eum non unde. Corrupti officiis consequuntur et earum. Sit quia blanditiis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '560.132.8271';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171106', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Damon Rutherford') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Enola', tp_id, 'Quae quia fugit quos quisquam enim quia. Beatae dolores odit ducimus autem tempora veniam. Consectetur dolorum neque quas fugit corrupti. Ipsa aspernatur illum. Tempore debitis voluptatibus quia nulla similique possimus eveniet. Quia consectetur nesciunt aut.', 'Quae quia fugit quos quisquam enim quia. Beatae dolores odit ducimus autem tempora veniam. Consectetur dolorum neque quas fugit corrupti. Ipsa aspernatur illum. Tempore debitis voluptatibus quia nulla similique possimus eveniet. Quia consectetur nesciunt aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-421-748-1419 x524';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120171700', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mozelle Gulgowski III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Annalise', tp_id, 'Omnis quidem non est earum nobis sequi et. Aliquam reprehenderit ab tempora non distinctio iure. Cum magnam hic temporibus iusto. Commodi non quis rerum.', 'Omnis quidem non est earum nobis sequi et. Aliquam reprehenderit ab tempora non distinctio iure. Cum magnam hic temporibus iusto. Commodi non quis rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-401-623-0711 x69066';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120172010', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Remington Weimann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Margie', tp_id, 'Eius aliquid adipisci dolores. Ut eos a ad. Quae rerum iste ut autem ipsum. Aut sunt quia ipsum officia quidem dolorum ea. Vel aut veniam.', 'Eius aliquid adipisci dolores. Ut eos a ad. Quae rerum iste ut autem ipsum. Aut sunt quia ipsum officia quidem dolorum ea. Vel aut veniam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(790) 125-4821';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171200', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ignacio Larson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dedric', tp_id, 'Qui quae incidunt. Placeat excepturi in eum ad. Maxime ea enim hic. Unde nisi mollitia veniam possimus ut aut quasi.', 'Qui quae incidunt. Placeat excepturi in eum ad. Maxime ea enim hic. Unde nisi mollitia veniam possimus ut aut quasi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(128) 876-9181';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171741', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Madyson Connelly') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Thora', tp_id, 'Deserunt hic ullam et rerum voluptate ea. Amet corporis aut praesentium voluptates rerum. Aut qui ea et. Ipsum officiis esse qui quo assumenda.', 'Deserunt hic ullam et rerum voluptate ea. Amet corporis aut praesentium voluptates rerum. Aut qui ea et. Ipsum officiis esse qui quo assumenda.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-662-572-3824 x23450';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171424', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jayda Ziemann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lukas', tp_id, 'Dolores rem quisquam et iure. Molestias modi libero. Facere provident perferendis voluptatem ipsam rerum in. Mollitia excepturi repudiandae tempora. Dolores et commodi veniam laudantium debitis ex magnam.', 'Dolores rem quisquam et iure. Molestias modi libero. Facere provident perferendis voluptatem ipsam rerum in. Mollitia excepturi repudiandae tempora. Dolores et commodi veniam laudantium debitis ex magnam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '820-682-1708 x778';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170028', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cydney Rolfson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carolina', tp_id, 'Velit suscipit ad cum architecto aperiam voluptatem et. Aut nisi ea inventore sint est qui eum. Aliquid sequi similique repellendus ea error. Minus eligendi libero qui.', 'Velit suscipit ad cum architecto aperiam voluptatem et. Aut nisi ea inventore sint est qui eum. Aliquid sequi similique repellendus ea error. Minus eligendi libero qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(512) 111-1982 x673';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120172125', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Corene Bashirian DVM') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Malinda', tp_id, 'Eos a quos et voluptas est vel nostrum. Corrupti aut id quidem. Quisquam nobis commodi eligendi molestias. Quia ratione corporis consequatur culpa recusandae. Voluptatum earum aut commodi nisi odit. Aut non asperiores quaerat.', 'Eos a quos et voluptas est vel nostrum. Corrupti aut id quidem. Quisquam nobis commodi eligendi molestias. Quia ratione corporis consequatur culpa recusandae. Voluptatum earum aut commodi nisi odit. Aut non asperiores quaerat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-815-377-6389 x848';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171407', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Herminio Lockman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jo', tp_id, 'Velit sed dignissimos nisi magnam nesciunt nam. Non qui delectus voluptates est et. Dolorem repudiandae officiis error molestiae tempora deleniti. Aliquid eius sequi quis sit. Veritatis id quia debitis rerum natus est.', 'Velit sed dignissimos nisi magnam nesciunt nam. Non qui delectus voluptates est et. Dolorem repudiandae officiis error molestiae tempora deleniti. Aliquid eius sequi quis sit. Veritatis id quia debitis rerum natus est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(719) 248-1997 x7772';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170050', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Stacey Kirlin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Micah', tp_id, 'Aut fugiat dignissimos. Possimus modi libero voluptas omnis nostrum hic sit. Quia et non molestiae omnis tempora dolores. Vel deleniti provident dolorum debitis dolor suscipit. Veniam distinctio repellat fugiat rerum. Occaecati iusto vel saepe eligendi quia eveniet.', 'Aut fugiat dignissimos. Possimus modi libero voluptas omnis nostrum hic sit. Quia et non molestiae omnis tempora dolores. Vel deleniti provident dolorum debitis dolor suscipit. Veniam distinctio repellat fugiat rerum. Occaecati iusto vel saepe eligendi quia eveniet.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '946.711.9737';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120171239', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hunter Lindgren') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'German', tp_id, 'Dolores molestiae soluta et iure. Optio quasi magni quia consequatur. Eius sequi et illo ab iste inventore quas. Sequi modi nihil sit asperiores aut. Sed commodi fuga quas. Beatae ut ad quibusdam et fugiat.', 'Dolores molestiae soluta et iure. Optio quasi magni quia consequatur. Eius sequi et illo ab iste inventore quas. Sequi modi nihil sit asperiores aut. Sed commodi fuga quas. Beatae ut ad quibusdam et fugiat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '347-960-4627';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120170600', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Agustina Shanahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Pablo', tp_id, 'Vel maiores quam non quis optio illo unde. At veniam quia magni accusamus fuga. Est minima corrupti et sed exercitationem ipsum nesciunt. Cum quis deleniti.', 'Vel maiores quam non quis optio illo unde. At veniam quia magni accusamus fuga. Est minima corrupti et sed exercitationem ipsum nesciunt. Cum quis deleniti.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '693-364-6153 x832';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120170851', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Macy Maggio') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Etha', tp_id, 'Consectetur minima placeat et quaerat ipsum. Velit amet culpa aperiam voluptas eum voluptatum quam. Quod ipsum id ut nihil repellat ut placeat. Quis sed consequatur provident dolorum minima. Esse iste recusandae dolores qui natus.', 'Consectetur minima placeat et quaerat ipsum. Velit amet culpa aperiam voluptas eum voluptatum quam. Quod ipsum id ut nihil repellat ut placeat. Quis sed consequatur provident dolorum minima. Esse iste recusandae dolores qui natus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-305-174-4303 x10393';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170441', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Favian Pacocha') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Estel', tp_id, 'Quas aspernatur pariatur sit culpa beatae animi ut. Nisi aut voluptate ipsum officia eum. Nostrum nisi autem deserunt consequatur eligendi. Nam voluptatem et quaerat minima hic dolorem alias. Ut eveniet nihil earum. Sint aut sed ad aut quia veritatis.', 'Quas aspernatur pariatur sit culpa beatae animi ut. Nisi aut voluptate ipsum officia eum. Nostrum nisi autem deserunt consequatur eligendi. Nam voluptatem et quaerat minima hic dolorem alias. Ut eveniet nihil earum. Sint aut sed ad aut quia veritatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '642.135.2732 x752';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170500', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hillard Kessler') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Guadalupe', tp_id, 'Harum minima quasi dolores nesciunt mollitia voluptatum deserunt. Hic incidunt ex consectetur voluptatem accusantium illo. Odio sit dolor provident. Aut sapiente magnam. Harum quia sed quaerat explicabo sequi non quo. Tempora iusto perspiciatis placeat voluptatem consectetur perferendis.', 'Harum minima quasi dolores nesciunt mollitia voluptatum deserunt. Hic incidunt ex consectetur voluptatem accusantium illo. Odio sit dolor provident. Aut sapiente magnam. Harum quia sed quaerat explicabo sequi non quo. Tempora iusto perspiciatis placeat voluptatem consectetur perferendis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '981.326.2470 x720';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171032', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'August Lubowitz PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kamryn', tp_id, 'Ut saepe illo eaque. Ut molestias cupiditate. Quia officiis voluptas error omnis eum ipsum quibusdam. Ullam et iure laborum. Nesciunt et corrupti.', 'Ut saepe illo eaque. Ut molestias cupiditate. Quia officiis voluptas error omnis eum ipsum quibusdam. Ullam et iure laborum. Nesciunt et corrupti.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-232-875-1868';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170903', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Evan Beatty') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marisol', tp_id, 'Qui quae et. Ipsa sed doloremque odio perferendis numquam sit. Aut distinctio officiis dolor ab. A sunt ducimus. Nemo nobis vel et laboriosam maiores repellendus rerum. Quod molestiae deserunt repellat minus.', 'Qui quae et. Ipsa sed doloremque odio perferendis numquam sit. Aut distinctio officiis dolor ab. A sunt ducimus. Nemo nobis vel et laboriosam maiores repellendus rerum. Quod molestiae deserunt repellat minus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '808-070-6188 x816';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120170855', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carole McKenzie DDS') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alexa', tp_id, 'Adipisci voluptate aut. Amet recusandae id tempore et atque sunt optio. Deserunt maiores soluta. Unde nostrum blanditiis itaque amet quam asperiores dolores. Libero voluptate ut id aut ut dolores.', 'Adipisci voluptate aut. Amet recusandae id tempore et atque sunt optio. Deserunt maiores soluta. Unde nostrum blanditiis itaque amet quam asperiores dolores. Libero voluptate ut id aut ut dolores.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(368) 375-5462 x3579';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120171915', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Thad Hane') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Flavie', tp_id, 'Vitae dolorem placeat et. Dolorum in aut sapiente repudiandae. Voluptas molestiae dolores quod voluptate. Qui corrupti dolores et minus reprehenderit et aut. Eum aut sit odio sit odit quidem. Quidem repudiandae omnis rerum.', 'Vitae dolorem placeat et. Dolorum in aut sapiente repudiandae. Voluptas molestiae dolores quod voluptate. Qui corrupti dolores et minus reprehenderit et aut. Eum aut sit odio sit odit quidem. Quidem repudiandae omnis rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(121) 263-1044 x4105';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120172204', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Floyd O''Conner') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'German', tp_id, 'Enim corrupti qui velit. Facere dolores expedita aut enim. Ullam quia quod cum iste nobis. Autem nihil ut quae cumque esse beatae.', 'Enim corrupti qui velit. Facere dolores expedita aut enim. Ullam quia quod cum iste nobis. Autem nihil ut quae cumque esse beatae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '590.560.0906 x46441';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120171810', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Garrick Watsica') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Clement', tp_id, 'Optio libero laudantium. Et nostrum et. Dolores consectetur vero expedita officiis nulla placeat. Et delectus non velit eveniet dolores modi vel. Dolorem suscipit odio et sequi. Debitis eos expedita laborum voluptates.', 'Optio libero laudantium. Et nostrum et. Dolores consectetur vero expedita officiis nulla placeat. Et delectus non velit eveniet dolores modi vel. Dolorem suscipit odio et sequi. Debitis eos expedita laborum voluptates.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-855-490-7985 x995';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120170831', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jamar Weimann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lexie', tp_id, 'Eveniet tempore voluptatum voluptas. Non quo molestias aut quia. Eius iure repudiandae. Aperiam soluta dolor.', 'Eveniet tempore voluptatum voluptas. Non quo molestias aut quia. Eius iure repudiandae. Aperiam soluta dolor.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(780) 818-4827';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120172232', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Roderick Nader') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Edgardo', tp_id, 'Voluptatum expedita repudiandae ex quaerat nam. Temporibus est magni unde vitae. Iste deserunt voluptatem eius libero inventore. Provident non molestiae.', 'Voluptatum expedita repudiandae ex quaerat nam. Temporibus est magni unde vitae. Iste deserunt voluptatem eius libero inventore. Provident non molestiae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-445-249-4851';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120170920', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Juanita Kuvalis') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Graham', tp_id, 'Dolorum at debitis. Aliquid rerum tempore sint voluptates natus animi. Veritatis illo ea voluptatum vel sit iure. Enim in nobis laudantium veritatis.', 'Dolorum at debitis. Aliquid rerum tempore sint voluptates natus animi. Veritatis illo ea voluptatum vel sit iure. Enim in nobis laudantium veritatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(496) 328-3801 x53782';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120172001', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Kathlyn Abernathy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Calista', tp_id, 'Optio sequi qui dolorem voluptates. Voluptas consequuntur quaerat alias neque sunt deserunt. Voluptas modi rerum suscipit qui eveniet. Veritatis dignissimos sapiente impedit eligendi. Quis voluptas dolores non rerum ea dolores. Iusto et saepe fugit laboriosam rerum ut deserunt.', 'Optio sequi qui dolorem voluptates. Voluptas consequuntur quaerat alias neque sunt deserunt. Voluptas modi rerum suscipit qui eveniet. Veritatis dignissimos sapiente impedit eligendi. Quis voluptas dolores non rerum ea dolores. Iusto et saepe fugit laboriosam rerum ut deserunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(332) 406-1458 x5927';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171955', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Barton Bednar') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elta', tp_id, 'Corporis est est eveniet laboriosam quia reiciendis dolorem. Labore animi porro nobis. Tempore sint eum accusantium officia qui explicabo. Rerum magnam fugit. Culpa esse voluptatem fugiat nobis labore cumque.', 'Corporis est est eveniet laboriosam quia reiciendis dolorem. Labore animi porro nobis. Tempore sint eum accusantium officia qui explicabo. Rerum magnam fugit. Culpa esse voluptatem fugiat nobis labore cumque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-997-764-4011';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171159', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Colin Bradtke') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Floyd', tp_id, 'Aut tempore dolorem ab. Tenetur soluta dolorem sit voluptas ad. In ab facere nam ex illum illo. Sunt blanditiis earum qui eius non deleniti.', 'Aut tempore dolorem ab. Tenetur soluta dolorem sit voluptas ad. In ab facere nam ex illum illo. Sunt blanditiis earum qui eius non deleniti.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '311.017.3541 x6008';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120172147', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Erwin Considine') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bertha', tp_id, 'Eos ut veniam. Beatae qui voluptatem qui odit id quasi. Aut itaque repudiandae minima. Excepturi consequatur ad omnis laboriosam est impedit consequatur. Necessitatibus error deleniti et itaque eveniet eaque omnis.', 'Eos ut veniam. Beatae qui voluptatem qui odit id quasi. Aut itaque repudiandae minima. Excepturi consequatur ad omnis laboriosam est impedit consequatur. Necessitatibus error deleniti et itaque eveniet eaque omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '153-763-3463 x82955';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120172329', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Johann Rutherford') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Caesar', tp_id, 'Facere quod quis magnam beatae dolor. Beatae quia quis officiis dignissimos tenetur quis et. Omnis inventore est quas ea fugit aut. Qui corporis mollitia accusantium minus voluptatum temporibus unde. Consequuntur et voluptas id.', 'Facere quod quis magnam beatae dolor. Beatae quia quis officiis dignissimos tenetur quis et. Omnis inventore est quas ea fugit aut. Qui corporis mollitia accusantium minus voluptatum temporibus unde. Consequuntur et voluptas id.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(112) 721-0148';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120170346', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Wilbert Greenholt') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Hailie', tp_id, 'Sapiente aut cupiditate quod nam. Est aut praesentium aliquid quisquam quis numquam. Et itaque accusantium eum et earum. Autem animi qui vel magnam. Odit cupiditate adipisci veniam iure sapiente qui.', 'Sapiente aut cupiditate quod nam. Est aut praesentium aliquid quisquam quis numquam. Et itaque accusantium eum et earum. Autem animi qui vel magnam. Odit cupiditate adipisci veniam iure sapiente qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '516-049-7083 x65289';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170540', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Juliana Jaskolski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Laury', tp_id, 'Velit illo adipisci id possimus quia facilis. Dolor provident magni labore dicta. Nemo ut maiores ducimus. Non illum minus omnis.', 'Velit illo adipisci id possimus quia facilis. Dolor provident magni labore dicta. Nemo ut maiores ducimus. Non illum minus omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(143) 401-1583 x47509';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170927', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Akeem Corkery') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alicia', tp_id, 'Qui aut ut at. Iure recusandae suscipit. Libero voluptatem qui occaecati. Omnis voluptas veritatis dolores perferendis molestias necessitatibus praesentium. Eligendi repudiandae quidem est non.', 'Qui aut ut at. Iure recusandae suscipit. Libero voluptatem qui occaecati. Omnis voluptas veritatis dolores perferendis molestias necessitatibus praesentium. Eligendi repudiandae quidem est non.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(607) 914-8598 x6728';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171109', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Billy Rempel') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lavada', tp_id, 'Eos nostrum qui eligendi quia. Et placeat dignissimos voluptate facere cum amet. Molestias modi qui eum sint cumque qui non. Aliquam odit deserunt. Ea odio asperiores saepe pariatur voluptatum nam.', 'Eos nostrum qui eligendi quia. Et placeat dignissimos voluptate facere cum amet. Molestias modi qui eum sint cumque qui non. Aliquam odit deserunt. Ea odio asperiores saepe pariatur voluptatum nam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-218-739-3709';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170643', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Leonora Dickens') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Delaney', tp_id, 'Dolores sunt aperiam repellendus iure. Nulla dicta commodi dignissimos error. Quo excepturi sit temporibus quod quis eaque veniam. Non aut corrupti esse. Distinctio qui rerum nobis excepturi. Error dolores occaecati.', 'Dolores sunt aperiam repellendus iure. Nulla dicta commodi dignissimos error. Quo excepturi sit temporibus quod quis eaque veniam. Non aut corrupti esse. Distinctio qui rerum nobis excepturi. Error dolores occaecati.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '955-676-0108';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171352', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Julian Waelchi') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Joana', tp_id, 'Deleniti officiis voluptas laudantium neque earum dolor. Unde velit reprehenderit impedit corporis hic et aspernatur. Vero placeat inventore est. Occaecati non nobis et molestiae sint.', 'Deleniti officiis voluptas laudantium neque earum dolor. Unde velit reprehenderit impedit corporis hic et aspernatur. Vero placeat inventore est. Occaecati non nobis et molestiae sint.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-106-286-3493';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171053', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kyle Goldner PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Harmony', tp_id, 'Exercitationem sunt est voluptatem. Perspiciatis possimus quos qui. Omnis dolore ex sequi asperiores explicabo. Repellat quae est ut quo ex id.', 'Exercitationem sunt est voluptatem. Perspiciatis possimus quos qui. Omnis dolore ex sequi asperiores explicabo. Repellat quae est ut quo ex id.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '243-750-6590 x2405';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120172044', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Araceli Mante') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Annabelle', tp_id, 'Libero unde nemo. Quae maiores placeat harum molestiae alias velit. Consectetur est nihil sint et. Vero sed aperiam qui est ut et dolorum. Molestiae blanditiis accusantium asperiores ex nobis.', 'Libero unde nemo. Quae maiores placeat harum molestiae alias velit. Consectetur est nihil sint et. Vero sed aperiam qui est ut et dolorum. Molestiae blanditiis accusantium asperiores ex nobis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-544-115-4297 x585';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171313', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Nat Price') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Callie', tp_id, 'Unde similique repellendus qui molestiae assumenda ut voluptatem. Reprehenderit explicabo et aspernatur error alias ullam. Nostrum asperiores doloremque. Maiores nesciunt harum.', 'Unde similique repellendus qui molestiae assumenda ut voluptatem. Reprehenderit explicabo et aspernatur error alias ullam. Nostrum asperiores doloremque. Maiores nesciunt harum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '190-711-3057 x7470';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170038', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alexandrine Hodkiewicz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Edmund', tp_id, 'Omnis commodi reiciendis repellendus praesentium dicta. Fuga non ea quisquam placeat aut. Quo nobis eveniet molestias nam qui voluptas. Voluptatem consequatur dolor. Omnis rerum unde quo. In aliquid sint perferendis quis.', 'Omnis commodi reiciendis repellendus praesentium dicta. Fuga non ea quisquam placeat aut. Quo nobis eveniet molestias nam qui voluptas. Voluptatem consequatur dolor. Omnis rerum unde quo. In aliquid sint perferendis quis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '344.112.4903 x16303';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171642', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Loraine Grimes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cordie', tp_id, 'Tenetur aperiam facere qui ex repudiandae blanditiis corporis. Qui nisi et quae laboriosam et eaque. Molestias id assumenda cum dolore vel. Id inventore explicabo. Sunt animi mollitia maxime voluptatibus quia. Impedit quia error temporibus quisquam corrupti saepe rerum.', 'Tenetur aperiam facere qui ex repudiandae blanditiis corporis. Qui nisi et quae laboriosam et eaque. Molestias id assumenda cum dolore vel. Id inventore explicabo. Sunt animi mollitia maxime voluptatibus quia. Impedit quia error temporibus quisquam corrupti saepe rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-350-854-4493 x38314';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120170047', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Marcus Kunde') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rebeka', tp_id, 'Consequuntur dolor optio. Quibusdam harum nostrum error et deleniti sit sint. Sunt beatae voluptas voluptatem temporibus. Vel qui quia rem rerum ex facilis ut. Ipsa doloribus necessitatibus labore maiores voluptatem. Facere voluptatem eveniet omnis illum enim magni.', 'Consequuntur dolor optio. Quibusdam harum nostrum error et deleniti sit sint. Sunt beatae voluptas voluptatem temporibus. Vel qui quia rem rerum ex facilis ut. Ipsa doloribus necessitatibus labore maiores voluptatem. Facere voluptatem eveniet omnis illum enim magni.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(209) 270-6420 x71097';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171311', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Deborah Mueller') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bernadette', tp_id, 'Minus magnam perspiciatis non nostrum debitis eaque. Facilis dolorem necessitatibus harum rerum ut. Aperiam distinctio dolorem excepturi itaque ut id. Aut dolor dolores omnis. Accusantium ex ab accusamus qui itaque sequi velit.', 'Minus magnam perspiciatis non nostrum debitis eaque. Facilis dolorem necessitatibus harum rerum ut. Aperiam distinctio dolorem excepturi itaque ut id. Aut dolor dolores omnis. Accusantium ex ab accusamus qui itaque sequi velit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '231.506.4040';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120172133', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alva Runolfsdottir') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Oscar', tp_id, 'Delectus reprehenderit veritatis dolor omnis. Vitae at qui repellendus aperiam. Iusto enim magni nihil quisquam omnis repudiandae non. Animi repudiandae consequatur et. Omnis fugiat qui repellendus dicta nesciunt officia maxime. Similique odit suscipit maiores consequatur.', 'Delectus reprehenderit veritatis dolor omnis. Vitae at qui repellendus aperiam. Iusto enim magni nihil quisquam omnis repudiandae non. Animi repudiandae consequatur et. Omnis fugiat qui repellendus dicta nesciunt officia maxime. Similique odit suscipit maiores consequatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-235-037-9768';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171350', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Murray Upton') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Eulah', tp_id, 'Expedita natus odit illo. Soluta maxime et esse aut quos deleniti sed. Reprehenderit saepe eligendi. A exercitationem provident culpa facere illum optio.', 'Expedita natus odit illo. Soluta maxime et esse aut quos deleniti sed. Reprehenderit saepe eligendi. A exercitationem provident culpa facere illum optio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(818) 899-1676';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170102', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Karen Cassin DVM') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Adrian', tp_id, 'Atque eum similique temporibus repellendus ratione cum. Quia odit nihil quas qui aut. Laboriosam aliquid consequatur quo deleniti dolores voluptate nam. Esse rerum molestiae. Quia ad quia ullam. Enim nihil quia est.', 'Atque eum similique temporibus repellendus ratione cum. Quia odit nihil quas qui aut. Laboriosam aliquid consequatur quo deleniti dolores voluptate nam. Esse rerum molestiae. Quia ad quia ullam. Enim nihil quia est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '873-716-1567';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171920', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Roberto Sipes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Wilhelm', tp_id, 'Voluptatem maxime ipsa esse aut. Dolorem eos rerum qui. Praesentium animi doloribus esse sit. Animi delectus sunt tempora porro veniam voluptas. Nesciunt quis ea dolor id aspernatur. Accusantium corrupti aliquid perspiciatis aperiam.', 'Voluptatem maxime ipsa esse aut. Dolorem eos rerum qui. Praesentium animi doloribus esse sit. Animi delectus sunt tempora porro veniam voluptas. Nesciunt quis ea dolor id aspernatur. Accusantium corrupti aliquid perspiciatis aperiam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '699.902.5450';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120170305', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Elvie Murazik') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carmela', tp_id, 'Voluptatem odit consequatur non fugit. Magni qui quas. Magnam et ea. Repellendus nostrum modi.', 'Voluptatem odit consequatur non fugit. Magni qui quas. Magnam et ea. Repellendus nostrum modi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '427-385-3861';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171526', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Helene Koepp') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rickey', tp_id, 'Voluptas consequuntur quaerat nihil ea ut. Accusantium et neque voluptatem. Adipisci sint voluptatem pariatur asperiores consequatur repellendus. Perspiciatis facilis dolores ut aperiam quasi mollitia.', 'Voluptas consequuntur quaerat nihil ea ut. Accusantium et neque voluptatem. Adipisci sint voluptatem pariatur asperiores consequatur repellendus. Perspiciatis facilis dolores ut aperiam quasi mollitia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(813) 290-0741';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171830', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Arch Dickinson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Dudley', tp_id, 'Et velit provident voluptas dolores rerum enim. Ab praesentium exercitationem id sed itaque non cumque. Ducimus id eaque. Ipsum eaque exercitationem magni. Commodi ut ipsa at voluptatibus.', 'Et velit provident voluptas dolores rerum enim. Ab praesentium exercitationem id sed itaque non cumque. Ducimus id eaque. Ipsum eaque exercitationem magni. Commodi ut ipsa at voluptatibus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '951-860-3721';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120170109', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jane Carroll III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gust', tp_id, 'Earum sed alias ea id vel placeat adipisci. Non recusandae illum omnis voluptatem sint corrupti. Iure enim ex ab unde. Rem tenetur rerum.', 'Earum sed alias ea id vel placeat adipisci. Non recusandae illum omnis voluptatem sint corrupti. Iure enim ex ab unde. Rem tenetur rerum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-126-431-2772 x21041';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220171128', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Natalia Jast') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kennedy', tp_id, 'Omnis debitis ut in quod. Aliquam rerum molestiae. Qui aspernatur in officia deleniti quibusdam eos. Doloribus velit necessitatibus fugit non. Consequatur facere recusandae et ex. Totam eveniet soluta fuga sed inventore.', 'Omnis debitis ut in quod. Aliquam rerum molestiae. Qui aspernatur in officia deleniti quibusdam eos. Doloribus velit necessitatibus fugit non. Consequatur facere recusandae et ex. Totam eveniet soluta fuga sed inventore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '281.730.4537 x4550';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170351', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Larry Runte') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Maxime', tp_id, 'Et molestiae odio voluptatem provident culpa reprehenderit. Delectus numquam labore. Aspernatur nemo voluptatem. Molestiae accusantium quo et. Nam repudiandae dolores.', 'Et molestiae odio voluptatem provident culpa reprehenderit. Delectus numquam labore. Aspernatur nemo voluptatem. Molestiae accusantium quo et. Nam repudiandae dolores.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '527-125-1662 x692';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171539', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Morton Gaylord') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Aleen', tp_id, 'Quod nulla est aut rerum numquam. Sit odio earum id. Qui exercitationem suscipit eius vero ut quo eum. Repellendus aut accusantium et.', 'Quod nulla est aut rerum numquam. Sit odio earum id. Qui exercitationem suscipit eius vero ut quo eum. Repellendus aut accusantium et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(306) 868-3512 x861';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120170920', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cheyanne Roberts') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Juwan', tp_id, 'Commodi quod voluptatum eum eveniet sunt. Ab est distinctio harum. Omnis dolor et sed. Perferendis dicta culpa odio.', 'Commodi quod voluptatum eum eveniet sunt. Ab est distinctio harum. Omnis dolor et sed. Perferendis dicta culpa odio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(190) 868-4161 x8265';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120170616', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Johnson Daugherty') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Barton', tp_id, 'Earum ab consequatur dolor laudantium corrupti. Quo sequi provident aut. Nam facilis culpa at ipsa. Totam voluptatem deserunt ratione velit nihil corrupti cumque. Ad eum praesentium vel sed id. Illo adipisci vel ullam id libero.', 'Earum ab consequatur dolor laudantium corrupti. Quo sequi provident aut. Nam facilis culpa at ipsa. Totam voluptatem deserunt ratione velit nihil corrupti cumque. Ad eum praesentium vel sed id. Illo adipisci vel ullam id libero.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '313.258.6320';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171059', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ada Aufderhar') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Vivian', tp_id, 'Commodi autem accusantium. Natus sequi enim est dolores necessitatibus. Sit praesentium et expedita velit. Sed vel expedita distinctio aperiam praesentium deleniti rem. Eveniet quaerat nulla eos sit rem non. Voluptatem temporibus voluptatem provident et.', 'Commodi autem accusantium. Natus sequi enim est dolores necessitatibus. Sit praesentium et expedita velit. Sed vel expedita distinctio aperiam praesentium deleniti rem. Eveniet quaerat nulla eos sit rem non. Voluptatem temporibus voluptatem provident et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '299-971-7243 x43947';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171332', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Gabrielle Marvin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Julianne', tp_id, 'Dolores est nihil officia ducimus facere aut. Assumenda dolores doloribus quod vel ipsam. Consequatur in optio dicta natus placeat vero voluptatem. Aut qui saepe hic corrupti ut et. Sit id quasi dolorem quae ex ut.', 'Dolores est nihil officia ducimus facere aut. Assumenda dolores doloribus quod vel ipsam. Consequatur in optio dicta natus placeat vero voluptatem. Aut qui saepe hic corrupti ut et. Sit id quasi dolorem quae ex ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '228-271-4397 x0922';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120171530', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Luther Lockman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kelley', tp_id, 'Sint omnis voluptas. Id sit animi sit doloribus voluptas. In veniam ut laborum dolor et fugit accusantium. Ut nihil dolor aut expedita perferendis. Neque architecto ea et. Quos reprehenderit eos id vel.', 'Sint omnis voluptas. Id sit animi sit doloribus voluptas. In veniam ut laborum dolor et fugit accusantium. Ut nihil dolor aut expedita perferendis. Neque architecto ea et. Quos reprehenderit eos id vel.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-306-041-1515 x674';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171331', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carleton Abernathy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Frankie', tp_id, 'Ipsam voluptatem possimus dignissimos rerum ex. Eveniet accusamus sed possimus velit. Dolores et molestiae omnis qui. Occaecati dolorum blanditiis et. Possimus voluptate non hic qui doloribus accusantium. Non ut similique doloribus voluptate voluptates doloremque optio.', 'Ipsam voluptatem possimus dignissimos rerum ex. Eveniet accusamus sed possimus velit. Dolores et molestiae omnis qui. Occaecati dolorum blanditiis et. Possimus voluptate non hic qui doloribus accusantium. Non ut similique doloribus voluptate voluptates doloremque optio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '459.526.8989 x8290';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171211', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Elmo Doyle') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lucio', tp_id, 'Voluptates nostrum ut ut ea. Accusamus rerum atque similique. Nisi ratione id assumenda temporibus alias qui. Et ut corrupti quas in architecto. Deserunt voluptas architecto. Et et ipsum.', 'Voluptates nostrum ut ut ea. Accusamus rerum atque similique. Nisi ratione id assumenda temporibus alias qui. Et ut corrupti quas in architecto. Deserunt voluptas architecto. Et et ipsum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '749-335-6341 x914';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120171947', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Russel Halvorson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Garrick', tp_id, 'Molestiae sit accusantium tempore suscipit exercitationem eos. Laborum sint voluptatibus repudiandae cumque omnis. Provident saepe dolores voluptas. Sed quisquam debitis nulla. Odio quasi nisi voluptatibus minus.', 'Molestiae sit accusantium tempore suscipit exercitationem eos. Laborum sint voluptatibus repudiandae cumque omnis. Provident saepe dolores voluptas. Sed quisquam debitis nulla. Odio quasi nisi voluptatibus minus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '300.675.0782';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171521', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Liliane Windler') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Erika', tp_id, 'Et nemo quis quam labore suscipit. Quia vel sit libero et consequatur eos eveniet. Expedita incidunt doloremque ea quia et. Et laboriosam rem officiis deleniti et exercitationem.', 'Et nemo quis quam labore suscipit. Quia vel sit libero et consequatur eos eveniet. Expedita incidunt doloremque ea quia et. Et laboriosam rem officiis deleniti et exercitationem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-144-282-2067 x9660';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171736', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Audrey Heidenreich') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Billy', tp_id, 'Assumenda voluptatum commodi voluptatem iure at fugiat in. Ratione cupiditate ut earum consequuntur nihil. Necessitatibus explicabo quo ut pariatur. Distinctio eum in pariatur.', 'Assumenda voluptatum commodi voluptatem iure at fugiat in. Ratione cupiditate ut earum consequuntur nihil. Necessitatibus explicabo quo ut pariatur. Distinctio eum in pariatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '583.809.5177';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171919', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Edwin Daniel') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Donnell', tp_id, 'Voluptatem iusto earum asperiores id. Consequatur quam soluta corrupti animi quia dignissimos possimus. Error velit ea et ad ut. Voluptate molestiae officia ut consectetur.', 'Voluptatem iusto earum asperiores id. Consequatur quam soluta corrupti animi quia dignissimos possimus. Error velit ea et ad ut. Voluptate molestiae officia ut consectetur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '713-129-7901 x456';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171951', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Clement Friesen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Maxwell', tp_id, 'Non unde dicta. Ducimus sit et ab. Inventore illo ipsa in ut. Odit est qui nesciunt excepturi ex totam. Molestiae nam voluptas iste sunt ipsa.', 'Non unde dicta. Ducimus sit et ab. Inventore illo ipsa in ut. Odit est qui nesciunt excepturi ex totam. Molestiae nam voluptas iste sunt ipsa.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-532-242-5385';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170312', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Zetta Corkery MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gertrude', tp_id, 'Voluptas sed rerum asperiores modi. Accusantium facilis voluptatum. Aut illo sed possimus accusantium maxime aliquam. Eveniet adipisci est reiciendis explicabo fuga et doloribus.', 'Voluptas sed rerum asperiores modi. Accusantium facilis voluptatum. Aut illo sed possimus accusantium maxime aliquam. Eveniet adipisci est reiciendis explicabo fuga et doloribus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '759-922-5128 x334';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171911', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Aracely Lemke') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Anastacio', tp_id, 'Repellendus porro odit sed ullam iusto. Maxime ut sit optio quia. Ipsam vero qui. Maiores earum error ipsa.', 'Repellendus porro odit sed ullam iusto. Maxime ut sit optio quia. Ipsam vero qui. Maiores earum error ipsa.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '429.774.1916 x13448';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('210120170101', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Judd Franecki') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bo', tp_id, 'Est sunt sunt enim nam rerum provident. Dolorum ut quae ratione voluptate eaque. Est consequuntur necessitatibus. Quia est animi. Harum illo cupiditate.', 'Est sunt sunt enim nam rerum provident. Dolorum ut quae ratione voluptate eaque. Est consequuntur necessitatibus. Quia est animi. Harum illo cupiditate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-448-132-4711';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120170143', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bradley Morar') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Carlotta', tp_id, 'Sed sapiente est cupiditate dolor qui rerum. Dolor enim praesentium doloribus. Perferendis tenetur laudantium. Amet et esse aliquid consequatur. Reprehenderit voluptatem id qui consectetur et expedita eligendi.', 'Sed sapiente est cupiditate dolor qui rerum. Dolor enim praesentium doloribus. Perferendis tenetur laudantium. Amet et esse aliquid consequatur. Reprehenderit voluptatem id qui consectetur et expedita eligendi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(293) 243-2279 x0078';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120170014', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Oceane Ondricka IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Zachariah', tp_id, 'Laborum id ut eum aspernatur quia quasi reprehenderit. Debitis aliquam quaerat quam. Voluptas amet ut minus corrupti. Ut ab deserunt sint et atque perspiciatis minima. Placeat delectus non sunt dignissimos. Qui maiores quo rerum qui itaque.', 'Laborum id ut eum aspernatur quia quasi reprehenderit. Debitis aliquam quaerat quam. Voluptas amet ut minus corrupti. Ut ab deserunt sint et atque perspiciatis minima. Placeat delectus non sunt dignissimos. Qui maiores quo rerum qui itaque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '685.078.8711 x17935';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120172349', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Britney Lynch') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lora', tp_id, 'Quia consequatur quia odit maxime ut fuga. Qui et et nemo quas odit. Aut tempora a voluptatum non. Deleniti sed magni deserunt sunt maiores. Similique incidunt consequatur. Enim et sapiente officia.', 'Quia consequatur quia odit maxime ut fuga. Qui et et nemo quas odit. Aut tempora a voluptatum non. Deleniti sed magni deserunt sunt maiores. Similique incidunt consequatur. Enim et sapiente officia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-596-732-7134 x3636';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170319', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Dewitt Runolfsdottir') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Katlyn', tp_id, 'Numquam vel sit sit quia libero. Dolorem enim reiciendis dicta magnam aliquid ipsam. Incidunt nemo quaerat similique. Odit et dolores et est tempora et. Blanditiis ut cupiditate est repudiandae illo esse.', 'Numquam vel sit sit quia libero. Dolorem enim reiciendis dicta magnam aliquid ipsam. Incidunt nemo quaerat similique. Odit et dolores et est tempora et. Blanditiis ut cupiditate est repudiandae illo esse.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '407.106.6229';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120171913', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Emilia Weissnat') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Conner', tp_id, 'Est magnam autem doloremque iste ipsam illo laudantium. Qui voluptatem quisquam accusantium doloremque iure omnis eum. Porro facere accusantium sunt iste nihil fuga a. Nihil temporibus perspiciatis a. Architecto aspernatur velit ipsum unde a itaque vel.', 'Est magnam autem doloremque iste ipsam illo laudantium. Qui voluptatem quisquam accusantium doloremque iure omnis eum. Porro facere accusantium sunt iste nihil fuga a. Nihil temporibus perspiciatis a. Architecto aspernatur velit ipsum unde a itaque vel.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '427-442-9385';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120171159', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Delphia Flatley') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elyssa', tp_id, 'Cum autem officiis illum. Accusantium sequi labore sed aut. Quia aut mollitia dignissimos accusantium. Perspiciatis veniam expedita quibusdam.', 'Cum autem officiis illum. Accusantium sequi labore sed aut. Quia aut mollitia dignissimos accusantium. Perspiciatis veniam expedita quibusdam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(463) 064-0574 x35172';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170826', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alexandre Mann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Santos', tp_id, 'Aut quis temporibus sit ab reiciendis maxime dignissimos. Aut iusto et non qui ut. Aut ea ipsa. Suscipit placeat nihil.', 'Aut quis temporibus sit ab reiciendis maxime dignissimos. Aut iusto et non qui ut. Aut ea ipsa. Suscipit placeat nihil.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '188.675.6254 x7075';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120172130', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Everette Corwin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Annamae', tp_id, 'Mollitia ipsam itaque cum doloremque fugit eligendi voluptate. Eos eius aut itaque. Unde dolore ex soluta et consequuntur dolor. Reprehenderit omnis non. Tempore non voluptatum quia voluptatibus possimus. Qui porro velit libero et voluptate.', 'Mollitia ipsam itaque cum doloremque fugit eligendi voluptate. Eos eius aut itaque. Unde dolore ex soluta et consequuntur dolor. Reprehenderit omnis non. Tempore non voluptatum quia voluptatibus possimus. Qui porro velit libero et voluptate.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-683-427-9938 x4366';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120170001', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Wendell Jaskolski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Catharine', tp_id, 'Ad cumque est. Et assumenda at blanditiis corporis. Quis magnam non cum. Eius et rem autem. Aspernatur doloribus sequi nihil voluptates asperiores enim assumenda. Cum maxime quas vitae.', 'Ad cumque est. Et assumenda at blanditiis corporis. Quis magnam non cum. Eius et rem autem. Aspernatur doloribus sequi nihil voluptates asperiores enim assumenda. Cum maxime quas vitae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-412-265-5090 x022';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120171650', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Shirley Carter') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bernard', tp_id, 'Ipsum quod sed voluptate tempora ipsa perferendis consequatur. Quia consectetur debitis deleniti recusandae illo. Aspernatur maiores quos laborum sint voluptates sit esse. Labore fugiat possimus nesciunt quidem enim.', 'Ipsum quod sed voluptate tempora ipsa perferendis consequatur. Quia consectetur debitis deleniti recusandae illo. Aspernatur maiores quos laborum sint voluptates sit esse. Labore fugiat possimus nesciunt quidem enim.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '354-539-5799 x77401';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170216', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Raoul Friesen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bettye', tp_id, 'Suscipit dolor est. Ipsa quaerat similique nihil quae laboriosam. Temporibus laboriosam enim. Ut temporibus rerum. Consequatur reiciendis hic minus qui. Ipsa corrupti quia earum aut consequatur in.', 'Suscipit dolor est. Ipsa quaerat similique nihil quae laboriosam. Temporibus laboriosam enim. Ut temporibus rerum. Consequatur reiciendis hic minus qui. Ipsa corrupti quia earum aut consequatur in.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-358-746-3906';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170420', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Brad O''Kon') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alexis', tp_id, 'Officia dolore laudantium quisquam aut. Minus quod sint voluptas. Iure vero reiciendis est est et incidunt velit. Qui eum et blanditiis corrupti aut accusamus. Sint sit doloribus velit quo qui.', 'Officia dolore laudantium quisquam aut. Minus quod sint voluptas. Iure vero reiciendis est est et incidunt velit. Qui eum et blanditiis corrupti aut accusamus. Sint sit doloribus velit quo qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(588) 893-6824 x68957';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120170006', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Drake Wolff') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Austin', tp_id, 'Ut odio odit natus quisquam autem. Reprehenderit laudantium aut consequatur quia delectus. Pariatur quisquam sint ut qui dolorem libero. Vero soluta laboriosam et sed repudiandae. Eum et nesciunt dolore. Illum voluptas culpa et.', 'Ut odio odit natus quisquam autem. Reprehenderit laudantium aut consequatur quia delectus. Pariatur quisquam sint ut qui dolorem libero. Vero soluta laboriosam et sed repudiandae. Eum et nesciunt dolore. Illum voluptas culpa et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '624.858.1901';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120172027', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kattie Gutkowski') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Angelita', tp_id, 'Itaque eum veritatis beatae cumque. Voluptas dolorem qui deserunt qui aspernatur adipisci nesciunt. Consequatur eaque perspiciatis facilis labore asperiores qui. Et porro veniam voluptatem. Enim et inventore vitae. Optio mollitia sit provident quam unde minus.', 'Itaque eum veritatis beatae cumque. Voluptas dolorem qui deserunt qui aspernatur adipisci nesciunt. Consequatur eaque perspiciatis facilis labore asperiores qui. Et porro veniam voluptatem. Enim et inventore vitae. Optio mollitia sit provident quam unde minus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-657-493-4002 x464';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120171122', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Roman Walter') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Destin', tp_id, 'Aut itaque molestiae. Id sint tempore. Repudiandae consequatur nostrum provident ea libero accusantium nisi. Occaecati laudantium eum quos. Pariatur ea cum assumenda inventore. Est quidem fugit sunt quibusdam ab.', 'Aut itaque molestiae. Id sint tempore. Repudiandae consequatur nostrum provident ea libero accusantium nisi. Occaecati laudantium eum quos. Pariatur ea cum assumenda inventore. Est quidem fugit sunt quibusdam ab.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '248.813.9539 x26929';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120170238', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alessandra Bins') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Emmett', tp_id, 'Quis numquam praesentium esse iure exercitationem. Commodi veniam rerum et accusantium. Libero nihil a velit dolorem ex totam nobis. Explicabo tempora est aliquam enim asperiores accusantium. Ipsam aliquid vel consectetur aperiam porro.', 'Quis numquam praesentium esse iure exercitationem. Commodi veniam rerum et accusantium. Libero nihil a velit dolorem ex totam nobis. Explicabo tempora est aliquam enim asperiores accusantium. Ipsam aliquid vel consectetur aperiam porro.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '408.700.2816 x0602';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120172135', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Logan Padberg') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Guadalupe', tp_id, 'Unde blanditiis et laboriosam. Dolores itaque iure pariatur impedit. Voluptas veritatis autem. Dolorem quaerat laborum quo ex magnam. Consectetur reprehenderit aut. Facere ea sed accusamus molestiae repudiandae voluptatum.', 'Unde blanditiis et laboriosam. Dolores itaque iure pariatur impedit. Voluptas veritatis autem. Dolorem quaerat laborum quo ex magnam. Consectetur reprehenderit aut. Facere ea sed accusamus molestiae repudiandae voluptatum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(309) 519-4142';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170910', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Graciela Franecki') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rosalyn', tp_id, 'Eos impedit voluptatum ut. Sint illo impedit. Provident quis ducimus laboriosam temporibus. Vitae architecto accusamus impedit et.', 'Eos impedit voluptatum ut. Sint illo impedit. Provident quis ducimus laboriosam temporibus. Vitae architecto accusamus impedit et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '545-710-6981 x07979';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120170902', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bradley Blick') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Josianne', tp_id, 'Veniam numquam inventore eos est. Voluptas molestiae ut quia ab voluptatem odio accusantium. Id consectetur non. Et quia ut. Necessitatibus eius est quos. Dignissimos nulla quis aut repellat corrupti reiciendis.', 'Veniam numquam inventore eos est. Voluptas molestiae ut quia ab voluptatem odio accusantium. Id consectetur non. Et quia ut. Necessitatibus eius est quos. Dignissimos nulla quis aut repellat corrupti reiciendis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '944-227-4871 x606';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170951', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Rosalia Durgan IV') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Frank', tp_id, 'Odit animi consequatur culpa dolores veniam quia. Harum blanditiis modi repudiandae nobis ad corrupti quas. Consequatur voluptas voluptatibus numquam consequatur sint qui pariatur. Ipsum delectus quod aut quo labore sunt.', 'Odit animi consequatur culpa dolores veniam quia. Harum blanditiis modi repudiandae nobis ad corrupti quas. Consequatur voluptas voluptatibus numquam consequatur sint qui pariatur. Ipsum delectus quod aut quo labore sunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-402-311-9771 x6224';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120170959', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Mae Stamm') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Filiberto', tp_id, 'Accusantium veniam qui ea. Error aliquid tempore repellat libero. Veritatis voluptatem accusantium qui voluptatem. Est aut molestiae qui.', 'Accusantium veniam qui ea. Error aliquid tempore repellat libero. Veritatis voluptatem accusantium qui voluptatem. Est aut molestiae qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-679-826-4298 x173';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120172043', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Bradley Bosco') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lesly', tp_id, 'Voluptas provident ab ut. Alias quis in error eveniet ut doloribus. Et non consequatur aperiam sed delectus omnis sed. In architecto in sint ad delectus cum omnis. Consequuntur ut aut consequatur nihil voluptas sed. Vel et in quia consequuntur error.', 'Voluptas provident ab ut. Alias quis in error eveniet ut doloribus. Et non consequatur aperiam sed delectus omnis sed. In architecto in sint ad delectus cum omnis. Consequuntur ut aut consequatur nihil voluptas sed. Vel et in quia consequuntur error.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '887-459-3939';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120171510', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alysson Hansen') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lambert', tp_id, 'Hic deleniti ut laudantium. Quaerat voluptas nemo et. Quas fugit neque eum alias ipsum. Architecto qui quis pariatur. Quia blanditiis nihil commodi voluptate distinctio. Perspiciatis veniam sed sequi.', 'Hic deleniti ut laudantium. Quaerat voluptas nemo et. Quas fugit neque eum alias ipsum. Architecto qui quis pariatur. Quia blanditiis nihil commodi voluptate distinctio. Perspiciatis veniam sed sequi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '301-727-4830 x3744';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('090120170012', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lempi Rosenbaum DVM') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Brandon', tp_id, 'Harum dolorem non ipsa magni doloremque et. Ut dolorem quibusdam quo et voluptatibus recusandae magni. Sed in rerum et harum. Voluptate modi fugit enim. Fuga quo nesciunt dignissimos. In voluptatem in blanditiis sunt qui natus perferendis.', 'Harum dolorem non ipsa magni doloremque et. Ut dolorem quibusdam quo et voluptatibus recusandae magni. Sed in rerum et harum. Voluptate modi fugit enim. Fuga quo nesciunt dignissimos. In voluptatem in blanditiis sunt qui natus perferendis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-670-139-7147 x25494';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('300120171741', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Colt Kemmer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Maryjane', tp_id, 'Aspernatur excepturi dolorum iure aliquam odio perspiciatis dignissimos. Distinctio accusamus quasi eum voluptas soluta. Qui quia ducimus earum aut debitis. Nihil reiciendis incidunt veritatis totam. Ut et sequi dignissimos.', 'Aspernatur excepturi dolorum iure aliquam odio perspiciatis dignissimos. Distinctio accusamus quasi eum voluptas soluta. Qui quia ducimus earum aut debitis. Nihil reiciendis incidunt veritatis totam. Ut et sequi dignissimos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(709) 316-1115 x26328';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171959', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Burley Bashirian') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Sylvester', tp_id, 'Est alias quidem enim consequatur animi minima. Vel est ea dolores vitae ex facilis. Facere beatae enim non. Modi tempore inventore exercitationem veritatis. Dicta dolores amet pariatur aut voluptatum.', 'Est alias quidem enim consequatur animi minima. Vel est ea dolores vitae ex facilis. Facere beatae enim non. Modi tempore inventore exercitationem veritatis. Dicta dolores amet pariatur aut voluptatum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(229) 932-8224';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171902', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Madyson Langworth') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Declan', tp_id, 'Quas nostrum dignissimos rerum est sunt. Assumenda voluptatem voluptatibus magnam illum dolores. Soluta molestias ipsa. Voluptas et animi et veritatis eveniet deserunt. Sint non ipsam.', 'Quas nostrum dignissimos rerum est sunt. Assumenda voluptatem voluptatibus magnam illum dolores. Soluta molestias ipsa. Voluptas et animi et veritatis eveniet deserunt. Sint non ipsam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '401-053-3026 x18704';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120171007', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Demetris Champlin PhD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Christine', tp_id, 'Nisi autem eaque ducimus. Quidem autem molestiae qui eos est. Voluptatem magnam molestias magni. Voluptate omnis est est rerum facere odit. Incidunt accusamus blanditiis consequuntur fuga. Quisquam ad ipsum eligendi aspernatur et unde.', 'Nisi autem eaque ducimus. Quidem autem molestiae qui eos est. Voluptatem magnam molestias magni. Voluptate omnis est est rerum facere odit. Incidunt accusamus blanditiis consequuntur fuga. Quisquam ad ipsum eligendi aspernatur et unde.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-262-337-3746';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120171549', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vida Cormier') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alec', tp_id, 'Repellendus maiores atque qui sed aut fugit tempora. Qui quia aperiam. Et accusantium quam ratione qui odit et ut. Aliquam quos vel est et. Eum aut vitae nesciunt eos aliquam.', 'Repellendus maiores atque qui sed aut fugit tempora. Qui quia aperiam. Et accusantium quam ratione qui odit et ut. Aliquam quos vel est et. Eum aut vitae nesciunt eos aliquam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '265-901-3144 x5741';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170338', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carolyne Conroy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Faustino', tp_id, 'Dicta itaque voluptatibus. Enim id eligendi voluptas laudantium similique sapiente. Quia sunt nulla et assumenda quo dignissimos itaque. Nesciunt provident harum voluptatum. Et molestiae excepturi iste iure quibusdam eligendi.', 'Dicta itaque voluptatibus. Enim id eligendi voluptas laudantium similique sapiente. Quia sunt nulla et assumenda quo dignissimos itaque. Nesciunt provident harum voluptatum. Et molestiae excepturi iste iure quibusdam eligendi.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '471-145-7092 x685';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220170401', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Eriberto Kertzmann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Godfrey', tp_id, 'Est dolore dolores sunt ad. Id consequatur animi et. Et ad et rerum. Vel tempore et. Voluptas sunt aspernatur quia molestias officiis recusandae.', 'Est dolore dolores sunt ad. Id consequatur animi et. Et ad et rerum. Vel tempore et. Voluptas sunt aspernatur quia molestias officiis recusandae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '801.573.0844';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120170241', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Hazle Kuhn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Marcel', tp_id, 'Quo dolor ullam. At dolorem distinctio veritatis sapiente. Voluptatem ullam quia nostrum vel ut eum. Dolorem molestiae repellendus expedita impedit. Qui nesciunt saepe quia ut. Excepturi distinctio molestiae qui ad rerum omnis.', 'Quo dolor ullam. At dolorem distinctio veritatis sapiente. Voluptatem ullam quia nostrum vel ut eum. Dolorem molestiae repellendus expedita impedit. Qui nesciunt saepe quia ut. Excepturi distinctio molestiae qui ad rerum omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '894-802-3513 x36920';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120172313', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Janie Kuvalis') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tressa', tp_id, 'Repellat ea aut et sapiente dolor ea eos. Ut asperiores totam sint consequatur dolores dolore. Reiciendis quos iure incidunt. Commodi et est fugit nihil optio ut.', 'Repellat ea aut et sapiente dolor ea eos. Ut asperiores totam sint consequatur dolores dolore. Reiciendis quos iure incidunt. Commodi et est fugit nihil optio ut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-255-435-1967 x1324';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170422', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mrs. Electa Boyer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Adolph', tp_id, 'Cupiditate nemo fugit deleniti labore. Omnis distinctio non. Iste possimus libero qui et officia sapiente reiciendis. Voluptate aut et debitis. Dignissimos dolor unde voluptates. Sed voluptas quia deserunt laboriosam sint quam ipsam.', 'Cupiditate nemo fugit deleniti labore. Omnis distinctio non. Iste possimus libero qui et officia sapiente reiciendis. Voluptate aut et debitis. Dignissimos dolor unde voluptates. Sed voluptas quia deserunt laboriosam sint quam ipsam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '737-759-6265';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120171707', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sanford Labadie') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lauretta', tp_id, 'Et fugiat placeat. Est quisquam aliquam eum ut necessitatibus sed quis. Ut veniam atque aspernatur explicabo cum voluptatem. Aut sapiente non.', 'Et fugiat placeat. Est quisquam aliquam eum ut necessitatibus sed quis. Ut veniam atque aspernatur explicabo cum voluptatem. Aut sapiente non.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-691-138-3916';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120170328', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Owen Dare MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gudrun', tp_id, 'Eos minus sunt aut et. Blanditiis quibusdam esse animi accusantium id dolor voluptatem. Consequuntur temporibus ullam veritatis. Sapiente mollitia unde occaecati qui ducimus minus vitae. Perspiciatis sit optio quam.', 'Eos minus sunt aut et. Blanditiis quibusdam esse animi accusantium id dolor voluptatem. Consequuntur temporibus ullam veritatis. Sapiente mollitia unde occaecati qui ducimus minus vitae. Perspiciatis sit optio quam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '372-636-8869';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170527', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dominique Rice') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jared', tp_id, 'Odit facilis id expedita velit officia quasi. Itaque necessitatibus sint molestiae et ut reiciendis. Nesciunt hic iure accusantium. Rerum deleniti adipisci. Natus odio temporibus.', 'Odit facilis id expedita velit officia quasi. Itaque necessitatibus sint molestiae et ut reiciendis. Nesciunt hic iure accusantium. Rerum deleniti adipisci. Natus odio temporibus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '705.758.4199';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171104', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ara Veum') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Mose', tp_id, 'Nihil omnis illum esse veritatis perferendis sed dicta. Eum pariatur nihil laborum. Perspiciatis culpa id et enim quia nulla. Doloribus rerum omnis. Tenetur facilis quia consectetur itaque dolorem consequatur.', 'Nihil omnis illum esse veritatis perferendis sed dicta. Eum pariatur nihil laborum. Perspiciatis culpa id et enim quia nulla. Doloribus rerum omnis. Tenetur facilis quia consectetur itaque dolorem consequatur.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '161.364.4803';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170500', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Reginald Johnston') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Mavis', tp_id, 'Eligendi dolores magnam eum tenetur in dolor natus. Temporibus modi perspiciatis deleniti velit voluptas et dolorum. Deserunt reprehenderit et ducimus ut nostrum. Dolore culpa fuga vel omnis autem ducimus.', 'Eligendi dolores magnam eum tenetur in dolor natus. Temporibus modi perspiciatis deleniti velit voluptas et dolorum. Deserunt reprehenderit et ducimus ut nostrum. Dolore culpa fuga vel omnis autem ducimus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '968.969.4163';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170222', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hillard Wolff') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rae', tp_id, 'Aut velit delectus minima. Qui et vel ullam illum. Atque tempore quo consectetur numquam. Ut aut non modi perspiciatis.', 'Aut velit delectus minima. Qui et vel ullam illum. Atque tempore quo consectetur numquam. Ut aut non modi perspiciatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(207) 642-6483 x023';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170532', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Yasmine White') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Norene', tp_id, 'Non dicta qui eligendi. Ea debitis assumenda velit. Quas quo impedit ea laborum occaecati cupiditate velit. Omnis eum voluptatibus ut voluptatem ea nemo doloribus.', 'Non dicta qui eligendi. Ea debitis assumenda velit. Quas quo impedit ea laborum occaecati cupiditate velit. Omnis eum voluptatibus ut voluptatem ea nemo doloribus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-111-582-1276';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170050', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Carli Reichert') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alessandra', tp_id, 'Ut nam modi fuga dolores. Voluptas qui repudiandae porro est. Ut beatae et. Corporis delectus nam nemo voluptates eius fugit. Sint corporis qui.', 'Ut nam modi fuga dolores. Voluptas qui repudiandae porro est. Ut beatae et. Corporis delectus nam nemo voluptates eius fugit. Sint corporis qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(914) 284-0847';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('140120170224', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kelsi Blanda') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Delfina', tp_id, 'Hic quo odio unde quod. Nesciunt delectus ut temporibus corrupti sunt quia. Assumenda qui qui debitis nam. Voluptates voluptatem nisi velit nemo et.', 'Hic quo odio unde quod. Nesciunt delectus ut temporibus corrupti sunt quia. Assumenda qui qui debitis nam. Voluptates voluptatem nisi velit nemo et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '237.221.9938 x9479';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171509', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jimmie Labadie') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Joe', tp_id, 'Illum nulla voluptatem repudiandae dicta totam labore sapiente. Sint quam voluptatum. Qui laboriosam quia repellat non voluptatem assumenda commodi. Non dolores rerum eum nam sit praesentium. Aspernatur dignissimos deserunt voluptatibus odit quae placeat esse. Voluptatem eum illo reiciendis et eveniet.', 'Illum nulla voluptatem repudiandae dicta totam labore sapiente. Sint quam voluptatum. Qui laboriosam quia repellat non voluptatem assumenda commodi. Non dolores rerum eum nam sit praesentium. Aspernatur dignissimos deserunt voluptatibus odit quae placeat esse. Voluptatem eum illo reiciendis et eveniet.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '489-412-9144 x666';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('250120170327', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Curtis Tremblay') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Soledad', tp_id, 'Laudantium voluptas delectus consectetur eveniet quod est iure. Illo ipsam vel quas dolor. Ullam soluta aut non. Nisi animi sit debitis qui sint.', 'Laudantium voluptas delectus consectetur eveniet quod est iure. Illo ipsam vel quas dolor. Ullam soluta aut non. Nisi animi sit debitis qui sint.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-817-462-6021';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170637', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jackson Lang') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Doug', tp_id, 'Ea aliquam distinctio eum ducimus ratione consectetur. Eos sapiente earum inventore omnis iusto. In fugiat error aut. Id occaecati et est.', 'Ea aliquam distinctio eum ducimus ratione consectetur. Eos sapiente earum inventore omnis iusto. In fugiat error aut. Id occaecati et est.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(189) 726-4247';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120171855', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Jillian Kuhn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Aniya', tp_id, 'Maxime maiores et sed omnis. Cumque porro voluptatibus vel. A illo iste reprehenderit quisquam dolor qui. Numquam at officia est sed iure soluta.', 'Maxime maiores et sed omnis. Cumque porro voluptatibus vel. A illo iste reprehenderit quisquam dolor qui. Numquam at officia est sed iure soluta.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-602-125-1249';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170132', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Magnus Kassulke') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tia', tp_id, 'Reiciendis qui recusandae quo odit et nam excepturi. Eligendi doloremque asperiores molestiae. Consequatur libero nihil. Aliquam sit quam error aut alias ex. Illo rerum ea. Neque in facere.', 'Reiciendis qui recusandae quo odit et nam excepturi. Eligendi doloremque asperiores molestiae. Consequatur libero nihil. Aliquam sit quam error aut alias ex. Illo rerum ea. Neque in facere.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '189.355.5242 x5771';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120171220', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Madisyn Kunze') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Stephanie', tp_id, 'Modi voluptates qui nulla qui repudiandae. Modi expedita laborum vel quis ullam. Eum commodi aliquam. Aut molestias rerum earum quia. Non quod vitae non qui rem. Impedit sed quos.', 'Modi voluptates qui nulla qui repudiandae. Modi expedita laborum vel quis ullam. Eum commodi aliquam. Aut molestias rerum earum quia. Non quod vitae non qui rem. Impedit sed quos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-655-969-5917';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('280120171730', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hudson Macejkovic') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Arvid', tp_id, 'Corrupti qui perspiciatis omnis optio doloribus. Quasi quibusdam nihil distinctio cupiditate. Laudantium id libero voluptatibus veritatis ea. Voluptas cumque voluptatum consequatur. Omnis ut dolor.', 'Corrupti qui perspiciatis omnis optio doloribus. Quasi quibusdam nihil distinctio cupiditate. Laudantium id libero voluptatibus veritatis ea. Voluptas cumque voluptatum consequatur. Omnis ut dolor.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(431) 311-9920 x1133';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171311', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Axel Goodwin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Irwin', tp_id, 'Dolor neque nisi voluptas corporis ullam et aut. Aut ea maxime et facilis omnis. Rerum aut ut molestiae enim consequatur repudiandae voluptas. Hic aut temporibus iste dolorem vel itaque nisi. Vel vitae qui illo ratione. Nostrum libero unde aut.', 'Dolor neque nisi voluptas corporis ullam et aut. Aut ea maxime et facilis omnis. Rerum aut ut molestiae enim consequatur repudiandae voluptas. Hic aut temporibus iste dolorem vel itaque nisi. Vel vitae qui illo ratione. Nostrum libero unde aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-436-191-5214 x03092';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120170143', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ruthie Terry') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Tomas', tp_id, 'Omnis at neque dolores dolorem repudiandae voluptatem. Aut necessitatibus cum dolorem sunt. Enim eaque ipsam. Necessitatibus amet aut quidem aut ut et. Eum veniam asperiores sapiente eos ut et corporis. Aut voluptatem a nemo sunt voluptatibus sit.', 'Omnis at neque dolores dolorem repudiandae voluptatem. Aut necessitatibus cum dolorem sunt. Enim eaque ipsam. Necessitatibus amet aut quidem aut ut et. Eum veniam asperiores sapiente eos ut et corporis. Aut voluptatem a nemo sunt voluptatibus sit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-731-567-5218 x74788';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120172149', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Maddison Jenkins') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Emile', tp_id, 'Illo placeat aut laborum. Aspernatur necessitatibus dicta a. Esse illo laudantium dolores nemo. Quod assumenda ex.', 'Illo placeat aut laborum. Aspernatur necessitatibus dicta a. Esse illo laudantium dolores nemo. Quod assumenda ex.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-387-365-7050';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120171101', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Ernesto Skiles') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kattie', tp_id, 'Maiores molestiae illum et repellendus. Blanditiis et voluptatibus sapiente officiis molestias fugiat quos. Quia asperiores tempore eaque. Ipsum sunt temporibus. Possimus consequuntur dolore optio omnis.', 'Maiores molestiae illum et repellendus. Blanditiis et voluptatibus sapiente officiis molestias fugiat quos. Quia asperiores tempore eaque. Ipsum sunt temporibus. Possimus consequuntur dolore optio omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-734-572-2872 x275';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170044', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Deontae Mueller') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Demetrius', tp_id, 'Nesciunt reiciendis sit et modi perferendis quod. Earum veniam officiis quo corporis magni eveniet iure. Perferendis exercitationem iure in suscipit deserunt. Fugit recusandae non perferendis.', 'Nesciunt reiciendis sit et modi perferendis quod. Earum veniam officiis quo corporis magni eveniet iure. Perferendis exercitationem iure in suscipit deserunt. Fugit recusandae non perferendis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '688-272-6036 x01264';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171208', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Everett Bauch') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lora', tp_id, 'Omnis odio velit sint. Assumenda aliquid non qui id architecto. Blanditiis explicabo sunt. Eligendi vero ad illum. Architecto nam ducimus neque et sequi inventore placeat.', 'Omnis odio velit sint. Assumenda aliquid non qui id architecto. Blanditiis explicabo sunt. Eligendi vero ad illum. Architecto nam ducimus neque et sequi inventore placeat.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '802.144.7682';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('110120172253', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ms. Jaycee Torphy') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Isabella', tp_id, 'Necessitatibus velit possimus dolor nobis. Quos non inventore cum. Illo eius rerum eveniet nulla cupiditate nesciunt voluptate. Qui aut qui ea quam natus incidunt asperiores. Porro assumenda quos adipisci corrupti.', 'Necessitatibus velit possimus dolor nobis. Quos non inventore cum. Illo eius rerum eveniet nulla cupiditate nesciunt voluptate. Qui aut qui ea quam natus incidunt asperiores. Porro assumenda quos adipisci corrupti.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-226-777-8447';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('130120171325', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Micah Bernier') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Glennie', tp_id, 'Atque deserunt aut molestiae dolor ut eum. Est sed sunt. Quod dolorem fugiat. Dolores possimus tempore.', 'Atque deserunt aut molestiae dolor ut eum. Est sed sunt. Quod dolorem fugiat. Dolores possimus tempore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '368-149-5734 x591';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170909', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Otis Sawayn MD') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bryana', tp_id, 'Aut perspiciatis et quidem. Ut natus et. Eius dolorem modi veritatis quidem et. Quaerat quia iusto. Et suscipit consectetur aut.', 'Aut perspiciatis et quidem. Ut natus et. Eius dolorem modi veritatis quidem et. Quaerat quia iusto. Et suscipit consectetur aut.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '834.833.5452 x367';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('020220171400', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ruthe Kirlin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Clara', tp_id, 'Labore ea aspernatur reprehenderit expedita et autem. Voluptas et et. Qui delectus et facere et repellat provident. Quae dolorem possimus dolore est. Ut velit cumque.', 'Labore ea aspernatur reprehenderit expedita et autem. Voluptas et et. Qui delectus et facere et repellat provident. Quae dolorem possimus dolore est. Ut velit cumque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-411-834-4313 x44950';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120172320', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jacinto Christiansen III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Helen', tp_id, 'Velit est et laborum atque culpa. Cupiditate eos ut accusantium. Laudantium deleniti dolore qui. Commodi porro magnam quae a harum. Recusandae quo aperiam aut voluptates ex.', 'Velit est et laborum atque culpa. Cupiditate eos ut accusantium. Laudantium deleniti dolore qui. Commodi porro magnam quae a harum. Recusandae quo aperiam aut voluptates ex.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '394-151-8615 x230';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171706', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Molly Reinger') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Caterina', tp_id, 'Rem tempora provident consequuntur et natus commodi. Minus quae nihil consequatur aut et. Ut deleniti sequi minima. Voluptatibus esse tempore voluptas nisi. Voluptatem adipisci libero. Labore quo adipisci et nesciunt.', 'Rem tempora provident consequuntur et natus commodi. Minus quae nihil consequatur aut et. Ut deleniti sequi minima. Voluptatibus esse tempore voluptas nisi. Voluptatem adipisci libero. Labore quo adipisci et nesciunt.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '274.573.2225 x0897';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120172254', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Darrick West') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kyle', tp_id, 'Optio numquam dolor. Non aut quo recusandae ratione placeat omnis. Alias unde consequatur dolorem qui excepturi autem. Sed in in consequuntur iste nostrum possimus.', 'Optio numquam dolor. Non aut quo recusandae ratione placeat omnis. Alias unde consequatur dolorem qui excepturi autem. Sed in in consequuntur iste nostrum possimus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '143.588.0109';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120170207', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Brielle Shields') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Pamela', tp_id, 'Nisi tempore dolor eum asperiores. Quod labore fuga dolores animi facilis aut. Nihil velit corrupti. Incidunt ipsa sapiente eum.', 'Nisi tempore dolor eum asperiores. Quod labore fuga dolores animi facilis aut. Nihil velit corrupti. Incidunt ipsa sapiente eum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '973.688.3770 x792';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120170822', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Alyson Shanahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Gaston', tp_id, 'Magnam est beatae alias quo quos ullam adipisci. Ratione nesciunt voluptatibus harum amet et molestiae. Nulla laudantium esse. Enim modi officiis.', 'Magnam est beatae alias quo quos ullam adipisci. Ratione nesciunt voluptatibus harum amet et molestiae. Nulla laudantium esse. Enim modi officiis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '116.309.5124 x823';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120171656', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Cyril Thompson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Olen', tp_id, 'Molestiae aut nihil sit. Qui ut et autem quas eveniet. Nihil nisi et reiciendis repellendus autem cum rerum. Ut aut aut optio itaque praesentium perferendis.', 'Molestiae aut nihil sit. Qui ut et autem quas eveniet. Nihil nisi et reiciendis repellendus autem cum rerum. Ut aut aut optio itaque praesentium perferendis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-760-914-7507 x2460';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171423', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Jennyfer Kuhlman') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alfreda', tp_id, 'Velit sed recusandae. Quibusdam qui qui voluptatibus voluptatum aperiam et. Dolorum corporis ad sunt est omnis sapiente. Et magnam deleniti vel. Voluptatem ut veritatis aut unde omnis eos odio.', 'Velit sed recusandae. Quibusdam qui qui voluptatibus voluptatum aperiam et. Dolorum corporis ad sunt est omnis sapiente. Et magnam deleniti vel. Voluptatem ut veritatis aut unde omnis eos odio.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '868.566.2418 x764';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120172357', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Kailyn Marks') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Ali', tp_id, 'Consectetur qui reiciendis. Aut dignissimos quibusdam voluptas tenetur non. Accusamus cupiditate explicabo similique ut et cum. Mollitia ipsam quia dolores accusantium cupiditate inventore. Ea sed voluptatum eligendi impedit nam.', 'Consectetur qui reiciendis. Aut dignissimos quibusdam voluptas tenetur non. Accusamus cupiditate explicabo similique ut et cum. Mollitia ipsam quia dolores accusantium cupiditate inventore. Ea sed voluptatum eligendi impedit nam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(991) 416-0115 x698';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('060120170906', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Erich Orn') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jonatan', tp_id, 'Hic voluptatibus a. Sit aut at. Qui ea assumenda ut officia facere dolor quidem. Impedit consequatur in et sit ratione. Molestiae cumque amet ipsam animi qui.', 'Hic voluptatibus a. Sit aut at. Qui ea assumenda ut officia facere dolor quidem. Impedit consequatur in et sit ratione. Molestiae cumque amet ipsam animi qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '957.167.4047';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120170603', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Hattie Smith Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Kendra', tp_id, 'Tempora repellendus est. Sit recusandae consequatur qui sit aut eum. Aut asperiores quis quos. Laborum aut dolorum mollitia vel quod. Dolorem sed aut sed itaque sunt nulla.', 'Tempora repellendus est. Sit recusandae consequatur qui sit aut eum. Aut asperiores quis quos. Laborum aut dolorum mollitia vel quod. Dolorem sed aut sed itaque sunt nulla.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-642-762-2609 x5631';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('270120171237', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Ronaldo Kovacek') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Cathrine', tp_id, 'Et et commodi cumque ea. Rerum dolor qui aspernatur. Corrupti explicabo vitae. Cumque tenetur consequuntur enim eum officia.', 'Et et commodi cumque ea. Rerum dolor qui aspernatur. Corrupti explicabo vitae. Cumque tenetur consequuntur enim eum officia.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '478-908-7124';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('120120171109', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Oren Shanahan') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Paris', tp_id, 'Ea ad beatae dolorem excepturi. Repellendus quisquam excepturi aut eius sed iure qui. Ratione reiciendis temporibus et ullam aperiam adipisci. Facilis rerum in molestias molestiae.', 'Ea ad beatae dolorem excepturi. Repellendus quisquam excepturi aut eius sed iure qui. Ratione reiciendis temporibus et ullam aperiam adipisci. Facilis rerum in molestias molestiae.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '817.868.3781';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('180120172031', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Winston O''Kon III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Jada', tp_id, 'Dolores enim labore pariatur non voluptas ipsum nihil. Iusto eius sit ratione. Eum sint sit fugit tenetur impedit commodi tempora. Consectetur id exercitationem nam est et. Rerum consectetur officiis.', 'Dolores enim labore pariatur non voluptas ipsum nihil. Iusto eius sit ratione. Eum sint sit fugit tenetur impedit commodi tempora. Consectetur id exercitationem nam est et. Rerum consectetur officiis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '242.286.3790';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('190120171005', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Callie Kshlerin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Johathan', tp_id, 'Autem ipsa mollitia enim deserunt. Veritatis praesentium optio est voluptas laudantium impedit molestiae. Et qui eaque corporis delectus ut ut aut. Error laboriosam tenetur ipsum. Et explicabo occaecati.', 'Autem ipsa mollitia enim deserunt. Veritatis praesentium optio est voluptas laudantium impedit molestiae. Et qui eaque corporis delectus ut ut aut. Error laboriosam tenetur ipsum. Et explicabo occaecati.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-893-786-7486';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('260120170734', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Leola Cormier') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Laury', tp_id, 'Dicta accusantium ratione sit nemo repudiandae quidem hic. Voluptate at assumenda et dolor explicabo quae. Minus autem quasi vitae dicta ratione. Delectus quae omnis alias rerum molestiae fugiat. Sed rerum quam autem corporis qui unde perspiciatis.', 'Dicta accusantium ratione sit nemo repudiandae quidem hic. Voluptate at assumenda et dolor explicabo quae. Minus autem quasi vitae dicta ratione. Delectus quae omnis alias rerum molestiae fugiat. Sed rerum quam autem corporis qui unde perspiciatis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(748) 647-7899 x04844';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120171432', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jessica Bradtke I') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Newton', tp_id, 'Porro eius tenetur voluptas et. Velit molestias hic non autem nihil dolorum. Qui expedita placeat. Reprehenderit quisquam ratione tempora. Corrupti at culpa earum quisquam impedit. Id pariatur illo facere excepturi veniam.', 'Porro eius tenetur voluptas et. Velit molestias hic non autem nihil dolorum. Qui expedita placeat. Reprehenderit quisquam ratione tempora. Corrupti at culpa earum quisquam impedit. Id pariatur illo facere excepturi veniam.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '761-392-3817 x56186';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171935', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sophia Funk DDS') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Elnora', tp_id, 'Eaque voluptas officia quia sequi eos molestiae. Consequuntur ducimus tempora repudiandae ea et. Velit et enim. Facere earum qui.', 'Eaque voluptas officia quia sequi eos molestiae. Consequuntur ducimus tempora repudiandae ea et. Velit et enim. Facere earum qui.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(861) 272-0562 x4408';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('030220171922', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Dr. Wayne Goodwin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Guillermo', tp_id, 'Eum magnam consequatur et. Omnis saepe enim. Perspiciatis adipisci illo quis voluptatum veniam consequuntur ipsum. Dignissimos est sint dicta ut rerum dolore. Voluptatem eaque et nam in ea consequuntur. Sit laboriosam excepturi vero.', 'Eum magnam consequatur et. Omnis saepe enim. Perspiciatis adipisci illo quis voluptatum veniam consequuntur ipsum. Dignissimos est sint dicta ut rerum dolore. Voluptatem eaque et nam in ea consequuntur. Sit laboriosam excepturi vero.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '842.431.8641 x207';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120171223', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Zelda Stokes') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Adriel', tp_id, 'Non earum ut. Aliquid ut hic inventore porro libero. Nihil doloremque voluptatum sit vitae eveniet. Fugit optio vel sint sed maiores id repudiandae. Ea quos nemo rerum. Harum dolor vel sed.', 'Non earum ut. Aliquid ut hic inventore porro libero. Nihil doloremque voluptatum sit vitae eveniet. Fugit optio vel sint sed maiores id repudiandae. Ea quos nemo rerum. Harum dolor vel sed.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-987-214-5597 x1873';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120172242', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Judge Runolfsson') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alfonzo', tp_id, 'Cupiditate et fugiat consequuntur. Nobis odit sit quam. Repellendus non eaque eos. Sed nemo voluptatibus sit voluptate. Beatae quo ut et et.', 'Cupiditate et fugiat consequuntur. Nobis odit sit quam. Repellendus non eaque eos. Sed nemo voluptatibus sit voluptate. Beatae quo ut et et.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '274.626.6792 x187';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('240120172254', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Vida Schaefer') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Lorenza', tp_id, 'Est voluptas consequuntur aut provident quibusdam. Voluptatem quo minus consequatur. Explicabo occaecati id tempora quis. Reiciendis sit hic quam ea. Voluptas ipsum eaque officiis.', 'Est voluptas consequuntur aut provident quibusdam. Voluptatem quo minus consequatur. Explicabo occaecati id tempora quis. Reiciendis sit hic quam ea. Voluptas ipsum eaque officiis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(777) 748-0192';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('080120170320', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Narciso Goyette I') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Alexandrea', tp_id, 'Omnis at quisquam rem sit est laudantium. Sit a quaerat libero temporibus eaque id. Consequatur est iure. Aut a illo sunt sint ipsam quia. Consequatur hic rerum ratione eveniet. Rerum distinctio neque ea voluptas.', 'Omnis at quisquam rem sit est laudantium. Sit a quaerat libero temporibus eaque id. Consequatur est iure. Aut a illo sunt sint ipsam quia. Consequatur hic rerum ratione eveniet. Rerum distinctio neque ea voluptas.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-488-611-4037 x30330';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171452', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Lucile Adams II') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Rey', tp_id, 'Quas omnis rerum adipisci at ex ipsam vel. Id provident consequatur. Enim corporis quo. Tempora blanditiis minima tempore fugit voluptatem maiores sed.', 'Quas omnis rerum adipisci at ex ipsam vel. Id provident consequatur. Enim corporis quo. Tempora blanditiis minima tempore fugit voluptatem maiores sed.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '956.471.2111';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('170120170003', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Delpha Mayert') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Concepcion', tp_id, 'Dolorum assumenda consequatur. Nam asperiores itaque. Sequi eos sed omnis repellat et distinctio perferendis. Incidunt omnis in. Molestiae ab ut quibusdam libero ea aperiam laborum.', 'Dolorum assumenda consequatur. Nam asperiores itaque. Sequi eos sed omnis repellat et distinctio perferendis. Incidunt omnis in. Molestiae ab ut quibusdam libero ea aperiam laborum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(933) 346-3328';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120171716', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Julie Leannon') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Christopher', tp_id, 'Consequatur nulla nobis. Aspernatur pariatur laudantium voluptatem nihil. Reprehenderit sunt possimus quisquam quod est modi. Sint autem doloribus eos.', 'Consequatur nulla nobis. Aspernatur pariatur laudantium voluptatem nihil. Reprehenderit sunt possimus quisquam quod est modi. Sint autem doloribus eos.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(804) 129-7519';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170655', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Daija Barton') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Georgianna', tp_id, 'Odio ex est non consequuntur placeat ut. Dolor porro fugiat eius. Iusto et minus asperiores. Eius saepe explicabo assumenda unde id consequatur excepturi. Aspernatur laudantium enim ad repudiandae voluptatem.', 'Odio ex est non consequuntur placeat ut. Dolor porro fugiat eius. Iusto et minus asperiores. Eius saepe explicabo assumenda unde id consequatur excepturi. Aspernatur laudantium enim ad repudiandae voluptatem.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '706-581-1830';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('230120170039', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Orland Schowalter III') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Zane', tp_id, 'Et qui eum labore voluptatum fugiat quo nihil. In unde voluptates natus. Aliquam explicabo aut quisquam autem ipsa assumenda delectus. Vel eveniet non rerum. Nisi reiciendis hic id harum.', 'Et qui eum labore voluptatum fugiat quo nihil. In unde voluptates natus. Aliquam explicabo aut quisquam autem ipsa assumenda delectus. Vel eveniet non rerum. Nisi reiciendis hic id harum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(308) 752-0400';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170025', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Gertrude Rolfson V') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Delphine', tp_id, 'Non commodi nobis distinctio eaque rem quia modi. Dolorem officia omnis repellat enim praesentium. Quod ut sapiente. Illo incidunt totam nihil. Ipsum quo et. Aspernatur ipsum dolores delectus expedita harum accusamus minus.', 'Non commodi nobis distinctio eaque rem quia modi. Dolorem officia omnis repellat enim praesentium. Quod ut sapiente. Illo incidunt totam nihil. Ipsum quo et. Aspernatur ipsum dolores delectus expedita harum accusamus minus.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-150-095-9826 x4465';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('290120170646', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Sherman Bergnaum') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Sierra', tp_id, 'Laudantium explicabo laboriosam voluptatibus accusantium tempore sed. Totam voluptatum mollitia maxime libero consequatur et vero. Quis magnam ut veritatis. Consequatur magnam quo. Ipsum est libero distinctio debitis dolor optio reprehenderit.', 'Laudantium explicabo laboriosam voluptatibus accusantium tempore sed. Totam voluptatum mollitia maxime libero consequatur et vero. Quis magnam ut veritatis. Consequatur magnam quo. Ipsum est libero distinctio debitis dolor optio reprehenderit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '887.070.0585';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('200120170624', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Patrick Gaylord') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Arnoldo', tp_id, 'Enim neque doloribus molestias rerum. Dolor esse quae et. Non qui eligendi qui optio excepturi. Nisi deleniti rerum aliquam. Mollitia modi eius numquam non id aliquam dolorum.', 'Enim neque doloribus molestias rerum. Dolor esse quae et. Non qui eligendi qui optio excepturi. Nisi deleniti rerum aliquam. Mollitia modi eius numquam non id aliquam dolorum.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '258-608-0884 x8131';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('040120170711', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Giovani Kris') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Pink', tp_id, 'Id unde nihil ea tenetur. Blanditiis vel sit sed consequatur. Quia non voluptatem veritatis aut et. Deleniti quisquam omnis.', 'Id unde nihil ea tenetur. Blanditiis vel sit sed consequatur. Quia non voluptatem veritatis aut et. Deleniti quisquam omnis.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '847-892-1075 x12037';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('150120171831', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Anjali Ortiz') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Breanna', tp_id, 'Provident laudantium deserunt. Aut aut et sed. Illum placeat est. Consequatur saepe exercitationem eligendi. Ex placeat pariatur dolor dicta eius. Voluptate et sapiente.', 'Provident laudantium deserunt. Aut aut et sed. Illum placeat est. Consequatur saepe exercitationem eligendi. Ex placeat pariatur dolor dicta eius. Voluptate et sapiente.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-429-275-5562 x20758';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('010220170017', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Fannie Cronin') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Merritt', tp_id, 'Dolorem omnis maxime aut mollitia quam provident. Labore atque velit rerum vitae. Sequi aut officia debitis animi eveniet blanditiis assumenda. Nam et ea dolorum et. Possimus nobis nihil qui assumenda impedit fugit.', 'Dolorem omnis maxime aut mollitia quam provident. Labore atque velit rerum vitae. Sequi aut officia debitis animi eveniet blanditiis assumenda. Nam et ea dolorum et. Possimus nobis nihil qui assumenda impedit fugit.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '410.126.8164';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('160120170900', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Miss Emely Nader') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Yvette', tp_id, 'Excepturi sed exercitationem quas explicabo dignissimos et. Aut qui officiis minima. Molestiae vero itaque. Ut dolores placeat est ullam dolore dolores dolorem. At et exercitationem. Atque sapiente distinctio eum vitae maiores.', 'Excepturi sed exercitationem quas explicabo dignissimos et. Aut qui officiis minima. Molestiae vero itaque. Ut dolores placeat est ullam dolore dolores dolorem. At et exercitationem. Atque sapiente distinctio eum vitae maiores.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '405-145-3426 x1065';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('220120170025', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jordi McClure') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Shemar', tp_id, 'Et labore sed blanditiis ullam et qui. Ut ex autem. Tempore perferendis asperiores et iure. Et ab officiis. Nisi debitis ipsam sint nulla eos. Et ipsa eaque laudantium.', 'Et labore sed blanditiis ullam et qui. Ut ex autem. Tempore perferendis asperiores et iure. Et ab officiis. Nisi debitis ipsam sint nulla eos. Et ipsa eaque laudantium.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '841.286.4078';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('070120171318', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Jamal White') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Peggie', tp_id, 'Est ex et odit quos qui vel nemo. Quis voluptatem qui atque qui excepturi temporibus. Et nihil earum tempore explicabo. Qui voluptatibus molestias. Architecto et inventore voluptatem non. Sequi harum aut necessitatibus cum omnis labore.', 'Est ex et odit quos qui vel nemo. Quis voluptatem qui atque qui excepturi temporibus. Et nihil earum tempore explicabo. Qui voluptatibus molestias. Architecto et inventore voluptatem non. Sequi harum aut necessitatibus cum omnis labore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-620-234-0692 x851';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('100120170734', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Precious Fisher Sr.') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Norval', tp_id, 'Nemo ad impedit et. Mollitia autem qui ut nemo sunt. Voluptate maxime repellat distinctio beatae. Iste doloremque nulla ducimus neque at. Quos minus quis optio et earum sit quisquam. Ut ad ea impedit voluptatem perspiciatis mollitia tempore.', 'Nemo ad impedit et. Mollitia autem qui ut nemo sunt. Voluptate maxime repellat distinctio beatae. Iste doloremque nulla ducimus neque at. Quos minus quis optio et earum sit quisquam. Ut ad ea impedit voluptatem perspiciatis mollitia tempore.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-791-501-1017';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('050120170713', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Mr. Toni Eichmann') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Bobbie', tp_id, 'Consequatur fuga non debitis molestiae dolorem suscipit. Dignissimos aspernatur asperiores. Ad ipsam incidunt quas temporibus maiores tempore quisquam. Ipsam quos tempora quod non dolores. Ut eligendi cumque.', 'Consequatur fuga non debitis molestiae dolorem suscipit. Dignissimos aspernatur asperiores. Ad ipsam incidunt quas temporibus maiores tempore quisquam. Ipsam quos tempora quod non dolores. Ut eligendi cumque.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '(607) 698-1052 x5432';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
insert into tue_protokoll (tp_anw_id, tp_angelegt_am, tp_angelegt_von, tp_richtung,  tp_datum, tp_status, tp_protokolltext_vorhanden,  tp_protokollant)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'ADMIN', 'abgehend', to_date('310120171615', 'DDMMYYYYHH24MISS'), 'Gespräch', 1, 'Zita Ondricka') 
 returning tp_id into tp_id;
insert into tue_protokolltext (tpt_anw_id, tpt_datum, tpt_angelegt_von, tpt_tp_id,  tpt_html, tpt_pur)
 values (30274, to_date('030220171332', 'DDMMYYYYHH24MISS'), 'Breanne', tp_id, 'Quis sit sunt perferendis non. Illo aut quibusdam quidem cum. Excepturi voluptatum harum adipisci laudantium. Incidunt sunt laboriosam doloribus dolores numquam illo omnis. Maiores ut id.', 'Quis sit sunt perferendis non. Illo aut quibusdam quidem cum. Excepturi voluptatum harum adipisci laudantium. Incidunt sunt laboriosam doloribus dolores numquam illo omnis. Maiores ut id.'); 
tanr_id := 14132;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 1);
anschlussnr := '1-849-108-5599 x7334';
insert into tue_hauptanschluss 
(tha_anw_id, tha_hauptnr) 
values (30274, anschlussnr) 
returning tha_id into tha_id;
insert into tue_anschlussnr (tanr_anw_id, tanr_tha_id, tanr_rufnummer) values (30274, tha_id, anschlussnr)
returning tanr_id into tanr_id;
insert into tue_pat (tpat_tp_id, tpat_anw_id, tpat_tanr_id, tpat_ist_ueberwacht) values (tp_id, 30274, tanr_id, 0);
end;
