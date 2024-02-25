# dev-ops

1b

Her følger en steg for steg beskrivelse av hvordan en branch kan beskyttes i github:

Først går jeg inn i Settings

<img width="452" alt="image" src="https://github.com/Taraav/dev-ops/assets/99477590/1603b5f8-0cc8-4fcc-9e98-10aeeff3db08">


Deretter trykker jeg på Branches 

<img width="182" alt="image" src="https://github.com/Taraav/dev-ops/assets/99477590/921a45ab-d4cd-4861-bbdd-acbf208c5721">

Jeg skriver navnet på branchen jeg vil beskytte

<img width="452" alt="image" src="https://github.com/Taraav/dev-ops/assets/99477590/71003a57-c86c-4f79-832b-e8a5cd3f36f5">

Videre kan jeg velge hvordan jeg vil beskytte branchen

<img width="452" alt="image" src="https://github.com/Taraav/dev-ops/assets/99477590/5c50974a-60b3-4efc-a2b5-c9a56756ce83">

Her beskyttes den ved at pull request er nødvendig for å kunne pushe til main, i tillegg til at kode må kunne bygges. 

Før jeg velger

<img width="92" alt="image" src="https://github.com/Taraav/dev-ops/assets/99477590/aae6c158-87f7-44b2-8a35-67d45a9d7400">


1c

Med tanke på devops prinsippene er det flere mulige fordeler og ulemper ved en workflow der minst to personer må godkjenne endringer i main branch. 
For det første er det en kvalitetskontroll, de som reviewer kan plukke opp problemer den som skrev koden ikke har sett. Dette kan også skape godt samarbeid, da flere i teamet involveres og i og med at problemer blir oppdaget er det er en måte å unngå disse problemene i fremtiden på. 

Samtidig kan det at flere skal reviewe koden føre til en «flaskehals» der arbeid hoper seg opp uten å fullføres. Dette kan føre til unødvendig venting, noe som går imot devops prinsippene. 


2b

For at sensor skal kunne kjøre terraformkoden på sin maskin er vedkommende nødt til å gjøre et par ting. Begynn med å gå inn i infra mappen og kjør kommando terraform init. Videre må det lages en secret.tfvars fil hvor verdiene til variablene deklareres. Det skal se slik ut: (ditt-brukernavn og ditt-passord må byttes ut med brukernavn og passord til Docker hub)

<img width="234" alt="image" src="https://github.com/Taraav/dev-ops/assets/99477590/e6c9dd12-a241-442e-9f13-2b2fed2f2e41">

Deretter må kommandoen terraform apply -var-file="secret.tfvars" kjøres, etterfulgt av yes.


3

Det brukes Github actions secrets for å holde informasjonen om dockerhub repository hemmelig. For å kjøre i sin fork er sensor nødt til å legge til egne credentials i Github secrets.


