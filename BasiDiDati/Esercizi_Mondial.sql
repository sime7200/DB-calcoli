/*Query 1:
Elencare, per ogni città, la nazione in cui si trova. Il risultato deve contenere la città e il nome della
nazione e essere ordinato lessicograficamente per città.

1) Abbiamo utilizzato la tabella City e Country 
2) Abbiamo usato la chiave esterna Country (attributo della tabella City) e il fatto che l'attributo Name (di Country) fosse unico e non nullo.
3) I sottoproblemi attraverso cui siamo arrivati a risolvere la query sono:
	- select City.Name,Country.Name
	  From City,Country; 
	  Per selezionare i nomi delle città e dei rispettivi paesi.

	-where( Country.Code=City.Country);
	 Per indicare la condizione da seguire.
	
	-order by City.Name;
	 Per ordinare lessicograficamente per città.

4) non abbiamo fatto riferimento ad assunzioni sui dati nel database( ad esempio per quanto riguarda i valori nulli) poichè tutte le città fanno parte di una nazione.
 
5)/

6) select name from city order by name;
   select name from country; */

select City.Name,Country.Name
From City,Country
where( Country.Code=City.Country)
order by City.Name;











/*Query 2:
Elencare le città attraversate da un fiume (il risultato deve contenere soltanto la città)


1) Abbiamo utilizzato la tabella Located
2) Abbiamo controllato il fatto che gli attributi river, lake e sea potessero essere valori NULL oppure NOT NULL
3) select city
from located;
4) Formulando la query abbiamo fatto affidamento sul fatto che gli attributi lake, sea e river possono assumere valori NULL e NOT NULL
5)/
6) select city
from located
where river is NULL; */

select city
from located
where river is not NULL;











/*Query 3:
Elencare le città con un nome che comprende la lettera y in qualsiasi posizione (il risultato deve
contenere il nome della città e il nome del paese e essere ordinato per paese e città).

1) Abbiamo usato la tabella city
2) Abbiamo controllato nel punto precedente il fatto che ogni città avesse un paese di appartenenza
3) Select name
   from city
   where name like '%y%';
4) Formulando la query abbiamo fatto affidamento sul fatto che, avendo il nome di una città (città.nome) , è impossibile che citta.country sia un valore NULL (in quanto ogni città appartiene a un paese).
5) /
6) Abbiamo controllato il risulatato della query provandone a scrivere una che estraesse tutte le città contenenti la lettera 'y', ma alcun ordine. Abbiamo constatato che sono le stesse, in ordine diverso.

 SELECT city.name
FROM city 
where city.name like '%y%'; */

SELECT city.name, city.country
FROM city 
where city.name like '%y%'
order by city.name;











/*Query 4:
Elencare le città che si trovano nei circoli polari artico e antartico, cioè oltre 66 gradi di latitudine
nord e sud (il risultato deve contenere le città e la loro latitudine).


1) Abbiamo utilizzato la tabella city.
2)Abbiamo usato il vincolo check, cercando solo le città aventi latitudine>66 e latitudine<-66.
3)
select city.name, city.latitude
from city
where (latitude>66);
per indicare le città con latitudine nord maggiore di 66.

select city.name, city.latitude
from city
where (latitude<-66);
per indicare le città con latitudine sud minore di -66.

4) Non abbiamo fatto affidamento a particolari assunzioni sui dati nel database, a parte il fatto che di ogni città era indicata la latitudine.
5)/
6)select city.name, city.latitude
from city
where (latitude<66 or latitude>-66); */

select city.name, city.latitude
from city
where (latitude>66 or latitude<-66);











/*Query 5:
Elencare le nazioni che confinano con l'Italia (il risultato deve comprendere soltanto il nome delle
nazioni).

1) abbiamo usato le tabelle borders e country
2) al punto precedente abbiamo controllato il fatto che nella tabella borders Country1 e Country2 fossero chiave primaria
3) 
select borders.country1
from borders
where borders.country2='I';


select borders.country2
from borders
where borders.country1='I';

4) Abbiamo fatto affidamento sulla clausola distinct, che ha permesso di non ripetere più volte gli stessi paesi confinanti con l'Italia. 
Questo perchè nella tabella borders, lo stato Italia può comparire sia in country1 che in country2

5)/

6)  Per controllare il risulato della query abbiamo provato a cercare i confini di tutti gli stati confinanti con l'Italia, per controllare che tra essi comparisse anche l'Italia.
Abbiamo usato questa query, sostituendo di volta in volta il paese in cosiderazione: 
select  distinct country.name
from borders, country
where ((borders.country1='F'or borders.country2='F') AND (borders.length>0) 
	  AND (country.code=borders.country1 or country.code=borders.country2) 
	  AND country.name!='France'); */

select  distinct country.name
from borders, country
where ((borders.country1='I'or borders.country2='I') AND (borders.length>0) 
	  AND (country.code=borders.country1 or country.code=borders.country2) 
	  AND country.name!='Italy');











/* Query 6:
Trovare la capitale con più abitanti tra tutte le capitali (il risultato deve contenere il nome della
capitale e la sua popolazione) (scrivere due versioni della query con e senza operatore aggregato
MAX).

1) Abbiamo usato le tabelle city e contry
2) Al punto precedente abbiamo controllato il fatto che nella tabella city la chiave primaria fosse: (name, country, province) 
3) questa sottoquery ci ha permesso di trovare la popolazione della capitale con più abitanti, dunque abbiamo potuto constatare che risulta uguale a quella trovata
con la query.

select max(city.population)
from city, country
where city.country=country.code; 




4) Non abbiamo fatto affidamento a particolari assunzioni sui dati nel database
5)  
select name, population
from (city join (select capital from country)as cap on city.name=cap.capital) tab1
where not exists
(select * from(city join (select capital from country)as cap on city.name=cap.capital)
 tab2 where tab2.population>tab1.population) and tab1.population is not null;

6) Abbiamo verificato il risultato andando a controllare che la città ottenuta fosse davvero una capitale

select country.name
from country
where country.capital='Beijing'; 

versione 1: */
select country.capital, city.population
from city, country
where (city.population=(select max(population) from city)) and city.country=country.code;

--versione 2:
select name, population
from (city join (select capital from country)as cap on city.name=cap.capital) tab1
where not exists
(select * from(city join (select capital from country)as cap on city.name=cap.capital)
 tab2 where tab2.population>tab1.population) and tab1.population is not null;












/*Query 7:
Per ogni città statunitense estrarre la sua popolazione e la superficie dei laghi su cui eventualmente
si affaccia (il risultato deve comprendere la città, la popolazione e l'area complessiva dei suoi laghi)
(scrivere due versioni della query).

1) abbiamo usato le tabelle city, located e lake
2) Nel punto precedente abbiamo controllato il fatto che nella tabella located si trovassero solo città aventi o fiumi o laghi o mare, quindi abbiamo constatato che 
da quella tabella non avremmo potuto estrarre tutte le città statunitensi
3) questa sottoquery ci ha permesso di trovare il nome delle città statunitensi aventi almeno un lago

select located.city 
from located
where (located.country='USA' and located.lake is not null);

4) Abbiamo usato la clausola distinct per non avere valori duplicati. Questo perchè estraendo i nomi delle città sia da city che da located, alcune di esse( ovvero quelle
aventi un lago) sarebbero rimaste duplicate.

5) select  city.name, city.population, sum(laghi.area)
from city left join (located join lake on located.lake=lake.name) as laghi on city.name=laghi.city
where city.country in (select code 
from country
where name='United States')
group by city.name, population;

6) abbiamo controllato il risulato della query cercando le città non statunitensi aventi un lago

select distinct city.name
from city left join located on located.city=city.name left join lake on lake.name=located.lake
where city.country!='USA';



prima versione: */
select distinct city.name, city.population, lake.area
from city left join located on located.city=city.name left join lake on lake.name=located.lake
where city.country='USA';

--seconda versione:
select  city.name, city.population, sum(laghi.area)
from city left join (located join lake on located.lake=lake.name) as laghi on city.name=laghi.city
where city.country in (select code 
from country
where name='United States')
group by city.name, population;




