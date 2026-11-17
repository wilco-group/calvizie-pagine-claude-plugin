# Guida: pubblicare la pagina in WordPress

Passo passo, per chi pubblica. Vale per le landing e per le pagine partner: dove le due cose differiscono è scritto. I passi vanno fatti **in quest'ordine**: ognuno prepara il successivo.

**Dove vive la pagina.** Una **landing** sta su un sito a parte, con il suo dominio: **https://hairnetwork.it**, all'indirizzo `https://hairnetwork.it/<slug>` (per esempio `https://hairnetwork.it/farmacia-esempio`). Una **pagina partner** sta su **calvizie.net**, come pagina di categoria.

**Quali passi fare.** I numeri dei passi sono gli stessi per tutti, così i rimandi restano validi:

- **Landing:** A, 1, 3, 4, 5, 7, 9, 10 (solo se serve l'approvazione), 11, 12. Salta i passi 2, 6 e 8, che sono solo per le pagine partner.
- **Pagina partner:** 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 (solo se serve), 11, 12. Salta il passo A, che è solo per le landing.

Ogni passo dice in cima se vale solo per uno dei due tipi.

Tieni aperta la **scheda di consegna**: tutte le risposte (titolo, slug, categoria, modulo, SEO) sono lì. Se lavori con Claude, puoi anche fargli fare da guida: scrivigli "guidami nella pubblicazione" e ti dà un passo alla volta, con i testi esatti da incollare.

## Prima di iniziare

Ti servono:

- i file consegnati da Claude: `.html`, `.css` (solo pagina partner) e la scheda di consegna;
- le foto elencate nella scheda, con i nomi indicati;
- un utente WordPress con il permesso di modificare le pagine Calvizie. Per le landing serve su **hairnetwork.it**: ci si accede con le **stesse credenziali di WordPress usate per calvizie.net** (l'accesso va fatto di nuovo perché è un altro dominio). Se al passo 3 non vedi i riquadri "HTML della pagina" e "CSS della pagina", chiedi all'amministratore del sito di abilitarti;
- per le landing, l'**indirizzo dell'informativa privacy di HairNetwork**: è nella scheda di consegna (voce "Indirizzo dell'informativa privacy (HairNetwork)"). Se manca, chiedilo a chi ha preparato la scheda prima di pubblicare.

**Cosa fa il sito da solo (landing su hairnetwork.it).** Non devi fare niente per: il tracciamento (il contenitore delle statistiche è già caricato: **non aggiungere mai codice di Tag Manager o di pixel**); il piè di pagina comune, con i dati della società e i link a informativa privacy, cookie policy e preferenze cookie (la landing non deve metterne uno suo); il **noindex** su ogni pagina (nessun passo SEO, e titolo e descrizione non sono obbligatori).

**Testi neutri.** Le landing si usano anche per le campagne sui social: tieni i testi neutri, senza promesse e senza termini medici dove si può (le regole di Meta sulle inserzioni sono severe). Se un testo ti sembra troppo "medico", chiedi a Claude di riscriverlo.

Il sito usa l'**editor classico** di WordPress: i pulsanti **Salva bozza**, **Anteprima** e **Pubblica** sono nel riquadro **Pubblica**, in alto a destra.

## A. Accedi a hairnetwork.it (solo landing)

Salta questo passo per le pagine partner.

1. Apri **https://hairnetwork.it/wp-admin/**.
2. Accedi con **le stesse credenziali di WordPress di calvizie.net**. È un sito diverso, quindi l'accesso va fatto di nuovo: è normale.
3. Da qui in avanti tutto si fa **su hairnetwork.it** (controlla l'indirizzo nella barra del browser), non su calvizie.net.

**Fatto quando:** sei dentro l'amministrazione di hairnetwork.it (in alto a sinistra vedi il nome del sito) e nel menu a sinistra c'è **Pagine**.

## 1. Carica le foto e fai sistemare gli indirizzi

Si fa **per primo**: l'HTML contiene indirizzi provvisori che vanno corretti prima di incollarlo.

1. Menu a sinistra: **Media > Aggiungi nuovo** (per le landing, quello di **hairnetwork.it**: le foto si caricano lì; per le pagine partner, quello di calvizie.net). Trascina tutte le foto dell'elenco nella scheda, insieme e nello stesso giorno (finiscono così nella stessa cartella).
2. Controlla i nomi sotto le anteprime: WordPress aggiunge "-1" se esiste già un file con lo stesso nome, e "-scaled" se la foto è più larga di 2560 pixel. Se un nome è cambiato, annotalo.
3. Vai in **Media > Libreria**, clicca una delle foto caricate e premi **Copia l'URL negli appunti**. Avrai un indirizzo come
   `https://hairnetwork.it/wp-content/uploads/2026/11/foto-apertura.jpg` (per una pagina partner, `https://calvizie.net/wp-content/uploads/2026/11/foto-apertura.jpg`).
4. Nell'HTML (e nel CSS, se contiene foto) ogni foto è scritta così:
   - landing: `https://hairnetwork.it/wp-content/uploads/FOTO/foto-apertura.jpg`;
   - pagina partner: `https://calvizie.net/wp-content/uploads/FOTO/foto-apertura.jpg`.

   Va sostituita la parte **fino a `FOTO/` compreso** (per esempio `https://hairnetwork.it/wp-content/uploads/FOTO/`) con la cartella vera. Due modi:
   - **con Claude (più semplice):** incolla a Claude l'indirizzo copiato al punto 3 (e i nomi cambiati al punto 2, se ce ne sono) e chiedigli i file con gli indirizzi giusti. Da qui in avanti usa **solo** i file nuovi;
   - **a mano:** apri il file con un editor di testo (TextEdit, Blocco note), usa **Trova e sostituisci** (su Mac: Modifica > Trova > Trova e sostituisci; su Windows: Ctrl+H), sostituisci tutto e salva. La cartella è l'indirizzo del punto 3 senza il nome del file: per esempio `https://hairnetwork.it/wp-content/uploads/2026/11/`.

**Fatto quando:** nei file non compare più la parola `FOTO/`.

## 2. Crea la categoria (solo pagina partner)

Solo pagine partner: salta questo passo per le landing, o se la scheda dice che la categoria esiste già.

1. Menu a sinistra: **Articoli > Categorie**.
2. Nella colonna di sinistra, sezione **Aggiungi una nuova categoria**: scrivi **Nome** e **Slug** della scheda; in **Categoria genitore** scegli quella indicata nella scheda (oppure lascia "Nessuna").
3. Clicca il pulsante **Aggiungi una nuova categoria** sotto i campi.

**Fatto quando:** la categoria compare nell'elenco a destra.

## 3. Crea la pagina e scegli il template

La landing si crea su **hairnetwork.it**, la pagina partner su **calvizie.net**.

**Landing:**

1. Su hairnetwork.it, menu a sinistra: **Pagine > Aggiungi pagina**.
2. Scrivi il **titolo** della pagina (dalla scheda). Il riquadro grande del contenuto resta **vuoto**: non serve.
3. Nel riquadro **Attributi della pagina** (colonna di destra), menu **Template**, scegli **Landing (Pagine Calvizie)**.
4. Compaiono i riquadri **HTML della pagina** e **CSS della pagina** (sotto l'editor) e **Form della landing/pagina** (a destra). Se non compaiono, clicca **Salva bozza** e ricarica la pagina.
5. Sotto il titolo, accanto a **Permalink:**, clicca **Modifica**, scrivi lo **slug** della scheda (solo minuscole, numeri e trattini, per esempio `farmacia-esempio`) e premi **OK**.
6. Clicca **Salva bozza**.

L'indirizzo pubblico sarà `https://hairnetwork.it/<slug>`. Se nel menu **Template** non c'è la voce "Landing (Pagine Calvizie)", oppure i riquadri non compaiono nemmeno dopo aver ricaricato, fermati e scrivi all'amministratore del sito: "Nella pagina che sto creando su hairnetwork.it non vedo [il template Landing (Pagine Calvizie) / i riquadri HTML e CSS della pagina]: puoi controllare che il plugin Pagine Calvizie sia attivo e che il mio utente abbia il permesso di modificare le pagine Calvizie?"

**Fatto quando:** la bozza è salvata, il permalink mostra lo slug giusto e vedi i riquadri del punto 4.

**Pagina partner:**

1. Menu a sinistra: **Pagine > Aggiungi pagina**.
2. Scrivi il **titolo** della pagina (dalla scheda). Il riquadro grande del contenuto resta **vuoto**: non serve.
3. Nel riquadro **Attributi della pagina** (colonna di destra), menu **Template**, scegli:
   - **Pagina partner (Pagine Calvizie)**.
4. Compaiono i riquadri **HTML della pagina** e **CSS della pagina** (sotto l'editor), **Form della landing/pagina** e **Categoria collegata** (a destra). Se non compaiono, clicca **Salva bozza** e ricarica la pagina.
   Se nel menu **Template** non ci sono le due voci "(Pagine Calvizie)", oppure i riquadri non compaiono nemmeno dopo aver ricaricato, fermati e scrivi all'amministratore del sito: "Nella pagina che sto creando non vedo [i template Pagine Calvizie / i riquadri HTML e CSS della pagina]: puoi controllare che il plugin Pagine Calvizie sia attivo e che il mio utente abbia il permesso di modificare le pagine Calvizie?"
5. Clicca **Salva bozza**.

(Il permalink non si imposta: l'indirizzo pubblico è quello della categoria.)

**Fatto quando:** la bozza è salvata e vedi i riquadri del punto 4.

## 4. Incolla l'HTML

Vale per landing e partner.

1. Apri il file `.html` (quello con gli indirizzi delle foto già sistemati) con un editor di testo, seleziona tutto (Cmd+A o Ctrl+A) e copia.
2. Clicca dentro il riquadro **HTML della pagina**, seleziona tutto quello che c'è (Cmd+A o Ctrl+A) e incolla.

## 5. Incolla il CSS

- **Pagina partner:** copia tutto il file `.css` e incollalo nel riquadro **CSS della pagina**, allo stesso modo.
- **Landing:** il CSS è già dentro l'HTML; lascia il riquadro **CSS della pagina** vuoto e vai avanti.

## 6. Collega la categoria (solo pagina partner)

Nel riquadro **Categoria collegata** (colonna di destra) scegli la categoria della scheda (è quella creata al passo 2: se non la trovi, controlla di averla creata e ricarica la pagina dopo aver cliccato **Salva bozza**).

Da quando la pagina è pubblicata si vede all'indirizzo della categoria: in alto il contenuto della pagina, sotto gli articoli della categoria, già con il loro stile. Chi apre l'indirizzo della pagina viene mandato lì automaticamente.

## 7. Imposta il modulo contatti

Vale per landing e partner. Riquadro **Form della landing/pagina** (colonna di destra). Se la pagina non ha un modulo, salta questo passo.

1. **Foglio Google o URL /exec:** incolla l'indirizzo del foglio Google indicato nella scheda (quello che vedi nella barra del browser quando il foglio è aperto). Per le pagine nuove usa sempre il link del foglio Google: gli indirizzi `/exec` sono del vecchio sistema e li imposta solo uno sviluppatore.
2. Sotto il campo il riquadro mostra un indirizzo email ("Condividi il foglio con questo indirizzo come Editor"). Copialo. Nel foglio Google: pulsante **Condividi**, incolla quell'indirizzo, ruolo **Editor**, togli la spunta "Invia notifica", **Condividi**.
   Il ruolo deve essere proprio **Editor**: con **Visualizzatore** i contatti non si scrivono nel foglio e arrivano solo all'email di riserva.
   Se al posto dell'indirizzo il riquadro dice "Account di servizio non ancora configurato.", il collegamento ai fogli Google non è ancora pronto: chiedi all'amministratore del sito prima di andare avanti col modulo.
3. **Email di riserva:** l'indirizzo della scheda. Riceve i contatti se il foglio non risponde.
4. **Stato del form:** lascia **Sospeso**. Si mette su **Attivo** solo al passo 12, quando chi è indicato nella scheda ha dato il via.
   - **Sospeso:** al posto del modulo i visitatori vedono il messaggio.
   - **Attivo:** il modulo invia. Resta attivo solo se foglio ed email di riserva sono compilati, altrimenti WordPress lo rimette su Sospeso e te lo segnala.
5. **Messaggio quando è sospeso:** lascia quello predefinito o scrivi quello della scheda.
6. **Nome del modulo per GTM (form_name):** **lascialo vuoto** per le landing nuove (in quel caso è uguale allo slug). Compilalo solo se la scheda lo indica: serve quando una pagina cambia indirizzo ma GTM e gli automatismi devono continuare a riconoscerla.
7. Landing: controlla che il link all'informativa privacy nel consenso del modulo sia quello di HairNetwork indicato nella scheda (lo decide l'HTML: se è diverso o punta a calvizie.net, chiedi a Claude i file corretti e rifai il passo 4).
8. Clicca **Salva bozza**.

Le colonne del foglio si creano da sole al primo contatto: Data, Pagina, i campi del modulo, i parametri delle campagne e l'URL. Se il foglio ha già le sue intestazioni, il modulo deve indicarle con `data-colonna` (vedi le regole dei campi): le colonne che non trova le aggiunge in fondo.

## 8. SEO (solo pagina partner)

Le landing non hanno questo passo: il sito mette da solo il noindex su ogni pagina e titolo e descrizione non sono obbligatori.

Nel riquadro **Rank Math SEO** (sotto l'editor):
1. scheda **Generale**, pulsante **Modifica snippet**: incolla **Titolo** e **Descrizione** della scheda, poi chiudi la finestra;
2. scheda **Social** (Facebook): scegli come immagine la foto di condivisione indicata nella scheda;
3. se la scheda dice "non indicizzata", scheda **Avanzate**: spunta **No Index**;
4. clicca **Salva bozza**. (Dopo la pubblicazione al suo posto c'è **Aggiorna**.)

## 9. Anteprima e barra rossa

Vale per landing e partner.

1. Clicca **Anteprima** (si apre una nuova scheda del browser).
2. Se in fondo allo schermo c'è una **barra rossa** ("Solo per gli amministratori"), la pagina ha qualcosa da sistemare: la barra lo dice in italiano. I casi più comuni:
   - "Ci sono immagini senza un indirizzo definitivo" → sono rimasti degli indirizzi provvisori con `FOTO/` (o una foto senza https://): rifai il passo 1 e poi il 4;
   - "è rimasto un segnaposto da completare (elemento con classe \"todo\")" → manca un testo: chiedi a Claude di completarlo o di toglierlo;
   - "Mancano il titolo SEO o la descrizione SEO" → solo pagina partner, passo 8 (per le landing non è richiesto);
   - "Una pagina partner deve avere una categoria" → passi 2 e 6;
   - "Il foglio Google di destinazione non è condiviso con l'account di servizio" → passo 7, punto 2;
   - "Il modulo è attivo ma mancano la destinazione dei contatti o l'email di riserva" → passo 7, punti 1 e 3;
   - "reCAPTCHA non configurato: il form non è protetto dallo spam." → non dipende dalla pagina: chiedi all'amministratore del sito prima di pubblicare;
   - "Le landing nuove non vanno su calvizie.net: creale nel sito hairnetwork.it..." (regola R17) → la landing è stata creata sul sito sbagliato: non pubblicarla lì, rifai dal passo A su hairnetwork.it;
   - per tutto il resto: copia il testo della barra a Claude e chiedi di correggere i file.
3. Correggi nella scheda dell'editor, clicca **Salva bozza**, poi ricarica la scheda dell'anteprima. La barra la vedono solo gli amministratori.
4. Guarda la pagina anche dal telefono (o restringendo la finestra): testi leggibili, foto al loro posto, modulo usabile.

**Fatto quando:** la barra rossa non c'è più e la pagina si vede bene anche da telefono.

## 10. Fai approvare la pagina (se serve)

Vale per landing e partner.

Se la scheda dice che qualcuno deve approvare la pagina (per esempio il partner) e non ha un account WordPress:

1. Riquadro **Form della landing/pagina**, sezione **Link di anteprima**: clicca **Crea link (valido 7 giorni)**.
2. Copia l'indirizzo che compare e mandalo a chi deve approvare.
3. Chi lo apre vede la pagina completa, con una fascia gialla "Anteprima" in alto. Il modulo si compila ma non invia nulla.
4. Se cambi la pagina dopo aver mandato il link, basta **Salva bozza**: lo stesso link mostra la versione nuova.

**Nuovo link** sostituisce il precedente (il vecchio smette di funzionare), **Revoca** lo disattiva subito. Fai salvare le modifiche prima di creare il link.

**Fatto quando:** hai l'ok **scritto** di chi deve approvare.

## 11. Pubblica

Vale per landing e partner.

Solo quando la barra rossa non c'è più e hai le approvazioni previste dalla scheda.

1. Clicca **Pubblica**.
2. Apri l'URL finale (dalla scheda; per una landing è `https://hairnetwork.it/<slug>`) in una finestra anonima e controlla che si veda come in anteprima, anche da telefono.
3. Solo pagina partner (su calvizie.net): la voce di menu si crea da sola. Ricarica la home di calvizie.net e controlla che la categoria compaia sotto **Partnership** nel menu in alto (può volerci qualche secondo, il tempo che si svuoti la cache). Se dopo la pubblicazione WordPress mostra un avviso giallo "Voce "Partnership" non trovata nel menu", aggiungi la categoria a mano: **Aspetto > Menu**, sotto **Partnership**, **Salva menu**. (Una landing non ha menu.)
   Landing: controlla anche che in fondo ci sia il piè di pagina comune del sito e che non ci siano riferimenti a calvizie.net.
4. Se hai creato un link di anteprima, ora puoi revocarlo (passo 10).

## 12. Attiva il modulo

Vale per landing e partner.

Solo quando chi è indicato nella scheda ("Chi dà il via per attivarlo") ha dato il via.

1. Riquadro **Form della landing/pagina**, **Stato del form**: **Attivo**, poi **Aggiorna**.
2. Apri la pagina pubblica in una finestra anonima e fai una prova con dati di test (nome "Prova", la tua email): deve comparire "Richiesta inviata!" e una nuova riga nel foglio.
3. Cancella la riga di prova dal foglio.

## Modifiche dopo la pubblicazione

Su una pagina già pubblicata le modifiche ai riquadri **HTML della pagina**, **CSS della pagina** e **Form della landing/pagina** vanno online appena clicchi **Aggiorna**: l'**Anteprima** non le mostra prima. Tieni da parte i file della versione precedente e controlla la pagina subito dopo aver aggiornato (in una finestra anonima, anche dal telefono); se qualcosa non va, rincolla la versione precedente e **Aggiorna**.

- Per una landing, le modifiche si fanno sempre **su hairnetwork.it** (passo A), non su calvizie.net. Se cambi lo slug di una landing già pubblicata, il suo indirizzo cambia: avvisa chi gestisce le campagne e, se serve, fai indicare nella scheda il "Nome del modulo per GTM (form_name)" perché GTM continui a riconoscerla.
- Testi o grafica: chiedi a Claude i file aggiornati. Se ci sono foto nuove rifai il passo 1 solo per quelle (le foto già caricate restano), poi i passi 4-5, **Aggiorna** e controlla subito la pagina.
- Una foto da sostituire: caricala con un **nome nuovo** (per esempio con "-v2" in fondo) e fai cambiare a Claude il suo indirizzo nell'HTML. Con lo stesso nome molti browser continuerebbero a mostrare quella vecchia.
- Sospendere il modulo: riquadro **Form della landing/pagina**, **Sospeso**, **Aggiorna**. Per riattivarlo: **Attivo**, **Aggiorna**. Controlla subito dopo che sulla pagina compaia il messaggio (o il modulo).
