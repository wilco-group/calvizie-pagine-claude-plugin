# Guida: pubblicare la pagina su calvizie.net

Passo passo, per chi pubblica. Vale per le landing e per le pagine partner: dove le due cose differiscono è scritto. I passi vanno fatti **in quest'ordine**: ognuno prepara il successivo.

Tieni aperta la **scheda di consegna**: tutte le risposte (titolo, slug, categoria, modulo, SEO) sono lì. Se lavori con Claude, puoi anche fargli fare da guida: scrivigli "guidami nella pubblicazione" e ti dà un passo alla volta, con i testi esatti da incollare.

## Prima di iniziare

Ti servono:

- i file consegnati da Claude: `.html`, `.css` (solo pagina partner) e la scheda di consegna;
- le foto elencate nella scheda, con i nomi indicati;
- un utente WordPress di calvizie.net con il permesso di modificare le pagine Calvizie. Se al passo 3 non vedi i riquadri "HTML della pagina" e "CSS della pagina", chiedi all'amministratore del sito di abilitarti.

Il sito usa l'**editor classico** di WordPress: i pulsanti **Salva bozza**, **Anteprima** e **Pubblica** sono nel riquadro **Pubblica**, in alto a destra.

## 1. Carica le foto e fai sistemare gli indirizzi

Si fa **per primo**: l'HTML contiene indirizzi provvisori che vanno corretti prima di incollarlo.

1. Menu a sinistra: **Media > Aggiungi nuovo**. Trascina tutte le foto dell'elenco nella scheda, insieme e nello stesso giorno (finiscono così nella stessa cartella).
2. Controlla i nomi sotto le anteprime: WordPress aggiunge "-1" se esiste già un file con lo stesso nome, e "-scaled" se la foto è più larga di 2560 pixel. Se un nome è cambiato, annotalo.
3. Vai in **Media > Libreria**, clicca una delle foto caricate e premi **Copia l'URL negli appunti**. Avrai un indirizzo come
   `https://calvizie.net/wp-content/uploads/2026/11/foto-apertura.jpg`.
4. Nell'HTML (e nel CSS, se contiene foto) ogni foto è scritta così:
   `https://calvizie.net/wp-content/uploads/FOTO/foto-apertura.jpg`.
   Va sostituito **`https://calvizie.net/wp-content/uploads/FOTO/`** con la cartella vera. Due modi:
   - **con Claude (più semplice):** incolla a Claude l'indirizzo copiato al punto 3 (e i nomi cambiati al punto 2, se ce ne sono) e chiedigli i file con gli indirizzi giusti. Da qui in avanti usa **solo** i file nuovi;
   - **a mano:** apri il file con un editor di testo (TextEdit, Blocco note), usa **Trova e sostituisci** (su Mac: Modifica > Trova > Trova e sostituisci; su Windows: Ctrl+H), sostituisci tutto e salva. La cartella è l'indirizzo del punto 3 senza il nome del file: `https://calvizie.net/wp-content/uploads/2026/11/`.

**Fatto quando:** nei file non compare più la parola `FOTO/`.

## 2. Crea la categoria (solo pagina partner)

Salta questo passo per le landing, o se la scheda dice che la categoria esiste già.

1. Menu a sinistra: **Articoli > Categorie**.
2. Nella colonna di sinistra, sezione **Aggiungi una nuova categoria**: scrivi **Nome** e **Slug** della scheda; in **Categoria genitore** scegli quella indicata nella scheda (oppure lascia "Nessuna").
3. Clicca il pulsante **Aggiungi una nuova categoria** sotto i campi.

**Fatto quando:** la categoria compare nell'elenco a destra.

## 3. Crea la pagina e scegli il template

1. Menu a sinistra: **Pagine > Aggiungi pagina**.
2. Scrivi il **titolo** della pagina (dalla scheda). Il riquadro grande del contenuto resta **vuoto**: non serve.
3. Nel riquadro **Attributi della pagina** (colonna di destra), menu **Template**, scegli:
   - landing → **Landing (Pagine Calvizie)**;
   - pagina partner → **Pagina partner (Pagine Calvizie)**.
4. Compaiono i riquadri **HTML della pagina** e **CSS della pagina** (sotto l'editor) e **Form della landing/pagina** (a destra); per le partner anche **Categoria collegata**. Se non compaiono, clicca **Salva bozza** e ricarica la pagina.
   Se nel menu **Template** non ci sono le due voci "(Pagine Calvizie)", oppure i riquadri non compaiono nemmeno dopo aver ricaricato, fermati e scrivi all'amministratore del sito: "Nella pagina che sto creando non vedo [i template Pagine Calvizie / i riquadri HTML e CSS della pagina]: puoi controllare che il plugin Pagine Calvizie sia attivo e che il mio utente abbia il permesso di modificare le pagine Calvizie?"
5. Clicca **Salva bozza**.
6. **Solo landing:** sotto il titolo compare **Permalink** con il pulsante **Modifica**. Cliccalo, scrivi lo **slug** della scheda e premi **OK**. (Per le pagine partner non serve: l'indirizzo pubblico è quello della categoria.)

**Fatto quando:** la bozza è salvata e vedi i riquadri del punto 4.

## 4. Incolla l'HTML

1. Apri il file `.html` (quello con gli indirizzi delle foto già sistemati) con un editor di testo, seleziona tutto (Cmd+A o Ctrl+A) e copia.
2. Clicca dentro il riquadro **HTML della pagina**, seleziona tutto quello che c'è (Cmd+A o Ctrl+A) e incolla.

## 5. Incolla il CSS

- **Pagina partner:** copia tutto il file `.css` e incollalo nel riquadro **CSS della pagina**, allo stesso modo.
- **Landing:** il CSS è già dentro l'HTML; lascia il riquadro **CSS della pagina** vuoto.

## 6. Collega la categoria (solo pagina partner)

Nel riquadro **Categoria collegata** (colonna di destra) scegli la categoria della scheda (è quella creata al passo 2: se non la trovi, controlla di averla creata e ricarica la pagina dopo aver cliccato **Salva bozza**).

Da quando la pagina è pubblicata si vede all'indirizzo della categoria: in alto il contenuto della pagina, sotto gli articoli della categoria, già con il loro stile. Chi apre l'indirizzo della pagina viene mandato lì automaticamente.

## 7. Imposta il modulo contatti

Riquadro **Form della landing/pagina** (colonna di destra). Se la pagina non ha un modulo, salta questo passo.

1. **Foglio Google o URL /exec:** incolla l'indirizzo del foglio Google indicato nella scheda (quello che vedi nella barra del browser quando il foglio è aperto). Per le pagine nuove usa sempre il link del foglio Google: gli indirizzi `/exec` sono del vecchio sistema e li imposta solo uno sviluppatore.
2. Sotto il campo il riquadro mostra un indirizzo email ("Condividi il foglio con questo indirizzo come Editor"). Copialo. Nel foglio Google: pulsante **Condividi**, incolla quell'indirizzo, ruolo **Editor**, togli la spunta "Invia notifica", **Condividi**.
   Il ruolo deve essere proprio **Editor**: con **Visualizzatore** i contatti non si scrivono nel foglio e arrivano solo all'email di riserva.
   Se al posto dell'indirizzo il riquadro dice "Account di servizio non ancora configurato.", il collegamento ai fogli Google non è ancora pronto: chiedi all'amministratore del sito prima di andare avanti col modulo.
3. **Email di riserva:** l'indirizzo della scheda. Riceve i contatti se il foglio non risponde.
4. **Stato del form:** lascia **Sospeso**. Si mette su **Attivo** solo al passo 12, quando chi è indicato nella scheda ha dato il via.
   - **Sospeso:** al posto del modulo i visitatori vedono il messaggio.
   - **Attivo:** il modulo invia. Resta attivo solo se foglio ed email di riserva sono compilati, altrimenti WordPress lo rimette su Sospeso e te lo segnala.
5. **Messaggio quando è sospeso:** lascia quello predefinito o scrivi quello della scheda.
6. Clicca **Salva bozza**.

Le colonne del foglio si creano da sole al primo contatto: Data, Pagina, i campi del modulo, i parametri delle campagne e l'URL. Se il foglio ha già le sue intestazioni, il modulo deve indicarle con `data-colonna` (vedi le regole dei campi): le colonne che non trova le aggiunge in fondo.

## 8. SEO

- **Landing:** titolo e descrizione sono già nell'HTML. Il riquadro Rank Math non ha effetto sulle landing: per cambiarli si modifica `<title>` e `<meta name="description">` nell'HTML.
- **Pagina partner:** nel riquadro **Rank Math SEO** (sotto l'editor):
  1. scheda **Generale**, pulsante **Modifica snippet**: incolla **Titolo** e **Descrizione** della scheda, poi chiudi la finestra;
  2. scheda **Social** (Facebook): scegli come immagine la foto di condivisione indicata nella scheda;
  3. se la scheda dice "non indicizzata", scheda **Avanzate**: spunta **No Index**.
- Clicca **Salva bozza**. (Dopo la pubblicazione al suo posto c'è **Aggiorna**.)

## 9. Anteprima e barra rossa

1. Clicca **Anteprima** (si apre una nuova scheda del browser).
2. Se in fondo allo schermo c'è una **barra rossa** ("Solo per gli amministratori"), la pagina ha qualcosa da sistemare: la barra lo dice in italiano. I casi più comuni:
   - "Ci sono immagini senza un indirizzo definitivo" → sono rimasti degli indirizzi provvisori `https://calvizie.net/wp-content/uploads/FOTO/` (o una foto senza https://): rifai il passo 1 e poi il 4;
   - "è rimasto un segnaposto da completare (elemento con classe \"todo\")" → manca un testo: chiedi a Claude di completarlo o di toglierlo;
   - "Mancano il titolo SEO o la descrizione SEO" → passo 8;
   - "Una pagina partner deve avere una categoria" → passi 2 e 6;
   - "Il foglio Google di destinazione non è condiviso con l'account di servizio" → passo 7, punto 2;
   - "Il modulo è attivo ma mancano la destinazione dei contatti o l'email di riserva" → passo 7, punti 1 e 3;
   - "reCAPTCHA non configurato: il form non è protetto dallo spam." → non dipende dalla pagina: chiedi all'amministratore del sito prima di pubblicare;
   - per tutto il resto: copia il testo della barra a Claude e chiedi di correggere i file.
3. Correggi nella scheda dell'editor, clicca **Salva bozza**, poi ricarica la scheda dell'anteprima. La barra la vedono solo gli amministratori.
4. Guarda la pagina anche dal telefono (o restringendo la finestra): testi leggibili, foto al loro posto, modulo usabile.

**Fatto quando:** la barra rossa non c'è più e la pagina si vede bene anche da telefono.

## 10. Fai approvare la pagina (se serve)

Se la scheda dice che qualcuno deve approvare la pagina (per esempio il partner) e non ha un account WordPress:

1. Riquadro **Form della landing/pagina**, sezione **Link di anteprima**: clicca **Crea link (valido 7 giorni)**.
2. Copia l'indirizzo che compare e mandalo a chi deve approvare.
3. Chi lo apre vede la pagina completa, con una fascia gialla "Anteprima" in alto. Il modulo si compila ma non invia nulla.
4. Se cambi la pagina dopo aver mandato il link, basta **Salva bozza**: lo stesso link mostra la versione nuova.

**Nuovo link** sostituisce il precedente (il vecchio smette di funzionare), **Revoca** lo disattiva subito. Fai salvare le modifiche prima di creare il link.

**Fatto quando:** hai l'ok **scritto** di chi deve approvare.

## 11. Pubblica

Solo quando la barra rossa non c'è più e hai le approvazioni previste dalla scheda.

1. Clicca **Pubblica**.
2. Apri l'URL finale (dalla scheda) in una finestra anonima e controlla che si veda come in anteprima, anche da telefono.
3. Se la scheda prevede una voce di menu: **Aspetto > Menu**, aggiungi la categoria (partner) o la pagina (landing) nel punto indicato, **Salva menu**.
4. Se hai creato un link di anteprima, ora puoi revocarlo (passo 10).

## 12. Attiva il modulo

Solo quando chi è indicato nella scheda ("Chi dà il via per attivarlo") ha dato il via.

1. Riquadro **Form della landing/pagina**, **Stato del form**: **Attivo**, poi **Aggiorna**.
2. Apri la pagina pubblica in una finestra anonima e fai una prova con dati di test (nome "Prova", la tua email): deve comparire "Richiesta inviata!" e una nuova riga nel foglio.
3. Cancella la riga di prova dal foglio.

## Modifiche dopo la pubblicazione

Su una pagina già pubblicata le modifiche ai riquadri **HTML della pagina**, **CSS della pagina** e **Form della landing/pagina** vanno online appena clicchi **Aggiorna**: l'**Anteprima** non le mostra prima. Tieni da parte i file della versione precedente e controlla la pagina subito dopo aver aggiornato (in una finestra anonima, anche dal telefono); se qualcosa non va, rincolla la versione precedente e **Aggiorna**.

- Testi o grafica: chiedi a Claude i file aggiornati. Se ci sono foto nuove rifai il passo 1 solo per quelle (le foto già caricate restano), poi i passi 4-5, **Aggiorna** e controlla subito la pagina.
- Una foto da sostituire: caricala con un **nome nuovo** (per esempio con "-v2" in fondo) e fai cambiare a Claude il suo indirizzo nell'HTML. Con lo stesso nome molti browser continuerebbero a mostrare quella vecchia.
- Sospendere il modulo: riquadro **Form della landing/pagina**, **Sospeso**, **Aggiorna**. Per riattivarlo: **Attivo**, **Aggiorna**. Controlla subito dopo che sulla pagina compaia il messaggio (o il modulo).
