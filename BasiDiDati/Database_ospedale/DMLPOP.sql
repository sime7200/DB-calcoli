


insert into paziente values ('Giovanni', 'Rossi', '1990-12-17', 'gvnrs9688p', 'sposato', 'Gavi-Via roma', 'architetto');
insert into paziente values ('Antonio', 'Bianchi', '1975-04-01', 'antbnc2345p', 'divorziato', 'Gavi-Via Badia', 'giardiniere');
insert into paziente values ('Maria', 'Orlando', '1961-10-05', 'mraorl674387f', 'sposata', 'Tortona-Via roma', 'insegnante');
insert into paziente values ('Giulia', 'Fiori', '1992-07-21', 'glafri87676f', 'NULL', 'Acqui-Via Piane', 'studentessa');
insert into paziente values ('Filippo', 'Bidone', '1982-11-30', 'flpbdn78458p', 'celibe', 'Basaluzzo-Via Pio', 'ottico');
insert into paziente values ('Grazia', 'Rossi', '1973-05-15', 'grzrsi29360f', 'sposata', 'Alessandria-Via cogo', 'operaia');
insert into paziente values ('Fabrizio', 'Ferrari', '1949-01-20', 'fbrzfr208898p', 'celibe', 'Novi L.-Corso Italia', 'pensionato');
insert into paziente values ('Tommaso', 'Astolfi', '2000-09-10', 'tmstl29009p', 'NULL', 'Asti-via Martiri', 'studente');
insert into paziente values ('Matilde', 'Carrea', '1999-12-27', 'mtlcra19830f', 'NULL', 'Gavi-Via Giardino', 'parrucchiera');
insert into paziente values ('Roberto ', 'Gemma', '1936-10-22', 'rbrgma78978p', 'sposato', 'Ovada-Via tortona', 'pensionato');



insert into ricovero values ('tmstl29009p', '2018-10-07 15:35:04','2018-10-13 17:00:04', '6 giorni 1 ora 25 minuti', 'true');
insert into ricovero values ('glafri87676f', '2019-07-02 12:00:00','2019-07-04 13:30:00', '2 giorni 1 ora 30 minuti', 'true');
insert into ricovero values ('rbrgma78978p', '1990-10-12 11:30:00','1990-10-15 13:00:00', '3 giorni 1 ora 30 minuti', 'false');
insert into ricovero values ('rbrgma78978p', '2007-06-05 11:40:00','2007-06-07 13:40:00', '2 giorni 2 ore', 'true');
insert into ricovero values ('mtlcra19830f', '2015-03-02 12:40:05','2015-03-05 14:00:05', '3 giorni 1 ora 20 minuti', 'false');
insert into ricovero values ('antbnc2345p', '2006-04-06 09:00:00', '2006-04-10 09:00:00', '4 giorni' , 'true');
insert into ricovero values ('antbnc2345p', '2014-05-09 09:00:00', '2014-05-15 09:00:00', '6 giorni' , 'true');


insert into percorsoterapeutico values ('tmstl29009p', 'NULL', 'Tachipirina 500', '2018-10-08 09:00:00','2018-10-15 09:00:00', '7 giorni', 248);
insert into percorsoterapeutico values ('glafri87676f', 'Dolori addominali', 'Oki, Xanax', '2019-07-03 09:00:00','2019-07-13 09:00:00', '10 giorni', 351);
insert into percorsoterapeutico values ('rbrgma78978p', 'NULL', 'Tachipirina 1000', '1990-10-13 03:00:00','1990-10-24 09:00:00', '11 giorni', 098);
insert into percorsoterapeutico values ('antbnc2345p', 'NULL', 'Anticoagulante', '2006-04-07 09:00:00', '2006-04-14 09:00:00', '7 giorni', 193);
insert into percorsoterapeutico values ('antbnc2345p', 'NULL', 'Oki', '2014-05-09 11:00:00', '2014-05-13 11:00:00', '4 giorni', 413);


insert into medico values ('stfqdr38730p', 'Stefano', 'Quadrato', '1965-06-05', 'stefano.quadrato@gmail.com', 'chirurgia');
insert into medico values ('lralb87372f', 'Lara', 'Albero', '1972-03-01', 'laraalbero72@libero.it', 'chirurgia/cardiochirurgia');
insert into medico values ('lgimrn8678p', 'Luigi', 'Marino', '1968-09-21', 'luigimarino@gmail.com', 'chirurgia generale');


insert into ecografia values (2124, 0.8, 2, 'Poligonale', 'nord-ovest');
insert into ecografia values (7578, NULL, NULL, 'NULL', 'NULL');
insert into ecografia values (1856, NULL, NULL, 'NULL', 'NULL');
insert into ecografia values (5321, 0.5, 1, 'Ovoidale', 'sud-ovest');
insert into ecografia values (4412, NULL, NULL, 'NULL', 'NULL');
insert into ecografia values (3092, 0.2, 2, 'Ovoidale', 'sud');
insert into ecografia values (3733, 0, 0, 'NULL', 'NULL');


insert into medicospecializzando values ('Nicola', 'Grosso', 'nclgrs34682p', 'anestesista', 'true');
insert into medicospecializzando values ('Camilla', 'Palla', 'cmlpla72392f', 'rianimatore', 'true');
insert into medicospecializzando values ('Davide', 'Rossi', 'dvdrsi32078p', 'anestesista', 'true');
insert into medicospecializzando values ('Paola', 'Stella', 'plastl76320f', 'anestesista', 'true');
insert into medicospecializzando values ('Alberto', 'Fava', 'albfva68392p', 'anestesista', 'true');


insert into intervento values ('tradizionale', 'true', 'tmstl29009p', 'stfqdr38730p', 1,'nclgrs34682p',' ', '2018-10-08 09:00:00', '2018-10-08 11:00:00', '02:00:00', 'false', 2, 'concluso', 2124, 'false', 'false');
insert into intervento values ('litotritore', 'false', 'glafri87676f', 'lralb87372f', 1,'cmlpla72392f',' ', '2019-07-02 18:00:00', '2019-07-02 19:30:00', '01:30:00', 'true', 0, 'concluso', 7578,'false', 'false');
insert into intervento values ('tradizionale', 'true', 'rbrgma78978p', 'lgimrn8678p', 2,'dvdrsi32078p', 'plastl76320f', '1990-10-13 09:00:00', '1990-10-13 11:30:00', '02:30:00', 'true', 0, 'concluso', 1856,'false', 'false');
insert into intervento values ( 'litotritore', 'false', 'rbrgma78978p', 'stfqdr38730p', 1,'plastl76320f',' ', '2007-06-05 15:00:00', '2007-06-05 17:00:00', '02:00:00', 'false', 1, 'concluso', 5321,'true', 'false');
insert into intervento values ('litotritore', 'false', 'mtlcra19830f', 'stfqdr38730p', 1,'albfva68392p',' ', '2015-03-03 12:00:00', '2015-03-03 13:40:00', '01:40:00', 'true', 0, 'concluso', 4412,'false', 'false');
insert into intervento values ('tradizionale', 'false', 'antbnc2345p', 'lgimrn8678p', 2,'dvdrsi32078p', 'cmlpla72392f', '2006-04-07 09:00:00', '2006-04-07 11:00:00', '02:00:00', 'true', 1, 'concluso', 3733,'false', 'false');
insert into intervento values ('tradizionale', 'false', 'antbnc2345p', 'stfqdr38730p', 0,' ', ' ', '2014-05-10 15:00:00', '2014-05-10 16:30:00', '01:30:00', 'false', 2, 'concluso', NULL, 'true', 'false');

insert into cartellaclinica values ('tmstl29009p', '248', 'NULL', 'NULL', 1, 'graminacee', 'NULL', 'stfqdr38730p');
insert into cartellaclinica values ('glafri87676f', '351', 'asma', 'NULL', 1, 'NULL', 'lattosio', 'lralb87372f');
insert into cartellaclinica values ('rbrgma78978p', '098', 'NULL', 'diabete', 5, 'NULL', 'NULL', 'lgimrn8678p-stfqdr38730p');
insert into cartellaclinica values ('mtlcra19830f','NULL', 'NULL', 'asma', 1, 'graminacee', 'NULL', 'stfqdr38730p');


insert into primointervento values ('rbrgma78978p', 'false', 'NULL', '3 giorni', 'tradizionale', 'lgimrn8678p' );
insert into primointervento values ('antbnc2345p', 'false', 'NULL', '4 giorni', 'tradizionale', 'lgimrn8678p' );
insert into primointervento values ('mtlcra19830f', 'false', 'NULL', '3 giorni 1 ora 20 minuti', 'litotritore', 'stfqdr38730p' );


insert into visitacontrollo values ( 110, 80, 75, 'false', NULL, 'NULL', 'tmstl29009p', '2018-09-02 09:00:00');
insert into visitacontrollo values ( 120, 90, 80, 'true', 3092, 'Tachipirina 500', 'gvnrs9688p', '2019-02-03 11:00:00');
insert into visitacontrollo values ( 110, 80, 65, 'false', NULL, 'NULL', 'glafri87676f', '2019-06-20 10:30:00');


insert into storicointerventi values ('tmstl29009p', '2018-10-08 09:00:00');
insert into storicointerventi values ('rbrgma78978p', '1990-10-13 09:00:00');
insert into storicointerventi values ('rbrgma78978p', '2007-06-05 15:00:00');
insert into storicointerventi values ('antbnc2345p', '2006-04-07 09:00:00');
insert into storicointerventi values ('antbnc2345p', '2014-05-10 15:00:00');
