--modifica dello stato fam.
update paziente set StatoFamiliare = 'divorziato' where codicefiscale = 'gvnrs9688p';


--modifica dell'indirizzo
update paziente set Indirizzo = 'Torino-Via Piave' where codicefiscale = 'fbrzfr208898p';


--modifica della professione
update paziente set Professione = 'disoccupata' where codicefiscale = 'mtlcra19830f';


--modifica dell'indirizzo email
update medico set email = 'luigimarino1@gmail.com' where codicefiscale = 'lgimrn8678p';


--modifica del numero di interventi fatti in cartella clinica
update cartellaclinica set num_interventi = 2 where paziente = 'glafri87676f';


--modifica intolleranze 
update cartellaclinica set intolleranze = 'glutine' where paziente = 'rbrgma78978p';


--aggiungo un paziente
insert into paziente values('Martina', 'Capello', '1994-02-19', 'mrtcpl47207f', 'NULL', 'Pavia-Via dei martiri', 'cuoca'); 


--aggiungo una visita di controllo
insert into VisitaControllo values(118, 81, 64, 'false', NULL, 'NULL', 'mrtcpl47207f', '2020-10-10 10:00:00');


--aggiungo un ricovero
insert into ricovero values ('grzrsi29360f', '2020-12-04 10:00:00', '2020-12-06 10:00:00', '2 giorni', 'false');


--aggiungo un intervento
insert into intervento values('tradizionale', 'true', 'grzrsi29360f', 'lralb87372f', 1, 'albfva68392p', ' ', '2020-09-22 12:00:00', '2020-09-22 14:30:00', '02:30:00', 'false', 0, 'concluso', NULL, 'false', 'false');