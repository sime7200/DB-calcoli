create table paziente (
Nome varchar(10),
Cognome varchar(10),
DataNascita date,
codicefiscale varchar(20) primary key,
StatoFamiliare varchar(10),
Indirizzo varchar(50),
Professione varchar(20)
);

create table ricovero(
paziente varchar(20),
inizio timestamp not null,
fine timestamp check(fine>inizio),
durata varchar(40),
DRG boolean,
primary key(paziente, inizio),
foreign key (paziente) references paziente(codicefiscale)	
);

create table PercorsoTerapeutico(
paziente varchar(20),
complicanze varchar(40),
farmaco varchar(40),
inizio timestamp not null,
fine timestamp check(fine>inizio),
durata varchar(40),
ID_percorso numeric primary key,
foreign key (paziente) references paziente(codicefiscale)	
);


create table medico(
codicefiscale varchar(20) primary key,
nome varchar(20),
cognome varchar(20),
DataNascita date,
email varchar(40),
specializzazione varchar(50)
);

create table ecografia(
ID_ECO numeric(4) primary key,
dimensioneCalcoli numeric default 0,
numeroCalcoli numeric(2) default 0,
formaCalcoli varchar(20),
posizioneCalcoli varchar(20)
);

create table medicoSpecializzando (
nome varchar(20),
cognome varchar(20),
codicefiscale varchar(30) primary key,
specializzazione varchar(30),
abilitazione boolean    

	);  
	

create table intervento( 
tipologia varchar(20),
VieBiliari boolean default 'false',
cfpaziente varchar(20),
cfmedico varchar(20),
numeroSpecializzandi numeric(1) check(numeroSpecializzandi<=2),
cfmedicoSpecializzando1 varchar(20)  default NULL,
cfmedicoSpecializzando2 varchar(20) default NULL,
inizio timestamp not null,
fine timestamp check(fine>inizio),
durata time,
esito boolean,          
gradocomplicazioni numeric check(gradocomplicazioni>=0 AND gradocomplicazioni<=5),
stato varchar(10),
ecografia numeric(4),
coliche boolean default 'false',
decesso boolean default 'false',
unique(cfmedico,inizio),
foreign key (ecografia) references ecografia(ID_eco),
foreign key (cfpaziente) references paziente(codicefiscale),
foreign key (cfmedico) references medico(codicefiscale)

); 

 	


create table CartellaClinica (
paziente varchar(20) primary key,
ID_PercorsiTerapeutici varchar(50),
patologiepregresse varchar(50),
patologieincorso varchar(50),
num_interventi numeric,
allergie varchar(50) default NULL,
intolleranze varchar(50)default NULL,
medicipartecipanti varchar(50),
foreign key (paziente) references paziente(codicefiscale)

); 
	
create table PrimoIntervento(
paziente varchar(20) primary key,
decesso boolean default 'false',
complicazioni varchar(50),
giorniricovero varchar(50),
tipologia varchar(20),
medico varchar(20),
foreign key (paziente) references paziente(codicefiscale),
foreign key (medico) references medico(codicefiscale)
); 

create table VisitaControllo (
pressioneSistolica numeric,
pressioneDiastolica  numeric,
peso numeric,
doloriAddominali  boolean default 'false',
ecografia  numeric(4),
farmaci varchar(50),
paziente varchar(20),
inizio timestamp,
unique (inizio, paziente),
foreign key (ecografia) references ecografia(ID_ECO),
foreign key (paziente) references paziente(codicefiscale)
); 
 

create table storicoInterventi(
paziente varchar(20),
inizio timestamp,
foreign key (paziente) references paziente(codicefiscale),
primary key(paziente,inizio)

);





