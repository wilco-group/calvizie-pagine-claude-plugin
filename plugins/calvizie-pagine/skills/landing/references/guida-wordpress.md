# Guida: pubblicare la pagina su calvizie.net

Passo passo, per chi pubblica. Vale per le landing e per le pagine partner: dove le due cose differiscono è scritto. Tieni aperta la **scheda di consegna**: tutte le risposte (slug, SEO, categoria, modulo) sono lì.

Ti serve un utente WordPress con il permesso di modificare le pagine Calvizie. Se nei passaggi qui sotto non vedi i riquadri "HTML della pagina" e "CSS della pagina", chiedi all'amministratore del sito di abilitarti.

## 1. Crea la pagina

1. Entra nella bacheca di WordPress di calvizie.net.
2. Menu a sinistra: **Pagine > Aggiungi nuova**.
3. Scrivi il **titolo** della pagina (dalla scheda).
4. Lascia vuoto il contenuto normale dell'editor: non serve.

## 2. Scegli il template

1. Cerca la voce **Modello** (o **Template**):
   - con l'editor a blocchi è nel pannello a destra, scheda **Pagina**, sezione **Modello**;
   - con l'editor classico è nel riquadro **Attributi pagina**, menu **Modello**.
2. Scegli:
   - landing → **Landing (Pagine Calvizie)**;
   - pagina partner → **Pagina partner (Pagine Calvizie)**.
3. Compaiono i riquadri "HTML della pagina", "CSS della pagina" e "Form della landing/pagina" (per le partner anche "Categoria collegata"). Se non compaiono, clicca **Salva bozza** e ricarica la pagina.

## 3. Carica le foto e sistema i loro indirizzi

Fallo **prima** di incollare l'HTML: così incolli una volta sola il testo già corretto.

1. Menu a sinistra: **Media > Aggiungi nuovo**. Trascina tutte le foto dell'elenco nella scheda, insieme, nello stesso giorno (finiscono così nella stessa cartella).
2. Controlla i nomi: WordPress aggiunge "-1" se esiste già un file con lo stesso nome, e "-scaled" se la foto è più larga di 2560 pixel. Se un nome è cambiato, annotalo.
3. Clicca una delle foto caricate e premi **Copia URL negli appunti**. Avrai un indirizzo come
   `https://calvizie.net/wp-content/uploads/2026/11/foto-apertura.jpg`.
   La **cartella** è tutto tranne il nome del file: `https://calvizie.net/wp-content/uploads/2026/11/`.
4. Nell'HTML (e nel CSS, se contiene foto) ogni foto è scritta così:
   `https://calvizie.net/wp-content/uploads/FOTO/foto-apertura.jpg`.
   Va sostituito **`https://calvizie.net/wp-content/uploads/FOTO/`** con la cartella vera. Due modi:
   - **con Claude (più semplice):** scrivi a Claude "le foto sono in https://calvizie.net/wp-content/uploads/2026/11/, rifammi i file con gli indirizzi giusti" (aggiungi i nomi cambiati al punto 2, se ce ne sono) e usa i file che ti restituisce;
   - **a mano:** apri il file con un editor di testo (TextEdit, Blocco note), usa **Trova e sostituisci** (su Mac: Modifica > Trova > Trova e sostituisci; su Windows: Ctrl+H), sostituisci tutto e salva.
5. Controllo veloce: nel testo non deve più comparire la parola `FOTO/`.

## 4. Incolla l'HTML

1. Apri il file `.html` con un editor di testo, seleziona tutto (Cmd+A o Ctrl+A) e copia.
2. Incolla nel riquadro **HTML della pagina**, sostituendo quello che c'è.

## 5. Incolla il CSS

- **Pagina partner:** copia tutto il file `.css` e incollalo nel riquadro **CSS della pagina**.
- **Landing:** il CSS è già dentro l'HTML; lascia il riquadro **CSS della pagina** vuoto.

## 6. Imposta il modulo contatti

Riquadro **Form della landing/pagina** (colonna di destra). Se la pagina non ha un modulo, salta questo passaggio.

1. **Foglio Google o URL /exec:** incolla l'indirizzo del foglio Google indicato nella scheda (quello che vedi nella barra del browser quando il foglio è aperto). Per le pagine nuove usa sempre il link del foglio Google: gli indirizzi `/exec` sono del vecchio sistema e li imposta solo uno sviluppatore.
2. Condividi il foglio come **Editor** con l'indirizzo che il riquadro mostra sotto il campo ("Condividi il foglio con questo indirizzo come Editor"). Nel foglio: pulsante **Condividi**, incolla quell'indirizzo, ruolo **Editor**, togli la spunta "Invia notifica", **Condividi**.
   Il ruolo deve essere proprio **Editor**: con **Visualizzatore** la barra rossa non dice nulla, ma i contatti non si scrivono nel foglio e arrivano solo all'email di riserva.
   Se al posto dell'indirizzo il riquadro dice "Account di servizio non ancora configurato.", il collegamento ai fogli Google non è ancora pronto: chiedi all'amministratore del sito prima di attivare il modulo.
3. **Email di riserva:** l'indirizzo della scheda. Riceve i contatti se il foglio non risponde.
4. **Stato del form:** quello della scheda ("Stato del modulo al lancio"). Una pagina nuova parte sempre su **Sospeso**: per accendere il modulo seleziona **Attivo** e poi clicca **Salva bozza** (o **Aggiorna**, se la pagina è già pubblicata).
   - **Sospeso:** al posto del modulo i visitatori vedono il messaggio.
   - **Attivo:** il modulo invia. Resta attivo solo se foglio ed email di riserva sono compilati, altrimenti WordPress lo rimette su Sospeso e te lo segnala.
5. **Messaggio quando è sospeso:** lascia quello predefinito o scrivi quello della scheda.

Le colonne del foglio si creano da sole al primo contatto: Data, Pagina, i campi del modulo, i parametri delle campagne e l'URL. Se il foglio ha già le sue intestazioni, il modulo deve indicarle con `data-colonna` (vedi le regole dei campi): le colonne che non trova le aggiunge in fondo.

## 7. SEO

- **Landing:** titolo e descrizione sono già nell'HTML. Il riquadro Rank Math non ha effetto sulle landing: per cambiarli si modifica `<title>` e `<meta name="description">` nell'HTML.
- **Pagina partner:** nel riquadro **Rank Math**:
  1. **Modifica snippet**: incolla **Titolo** e **Descrizione** della scheda;
  2. scheda **Social** (Facebook): scegli come immagine la foto di condivisione indicata nella scheda;
  3. se la scheda dice "non indicizzata", scheda **Avanzate**: spunta **No Index**.

## 8. Categoria (solo pagina partner)

1. Se la categoria non esiste ancora: menu **Articoli > Categorie**, scrivi nome e slug della scheda, scegli la categoria madre indicata, **Aggiungi nuova categoria**. Poi torna alla pagina.
2. Nel riquadro **Categoria collegata** scegli la categoria.

Da quel momento la pagina partner si vede all'indirizzo della categoria: in alto il contenuto della pagina, sotto gli articoli della categoria. La griglia degli articoli ha già il suo stile (riquadri con foto, titolo ed estratto, pagine numerate): non serve fare nulla. Chi apre l'indirizzo della pagina viene mandato lì automaticamente.

## 9. Anteprima e barra rossa

1. Clicca **Salva bozza**, poi **Anteprima**.
2. Se in fondo allo schermo c'è una **barra rossa** ("Solo per gli amministratori"), la pagina ha qualcosa da sistemare: la barra lo dice in italiano. I casi più comuni:
   - "Ci sono immagini senza un indirizzo definitivo" → sono rimasti degli indirizzi provvisori `https://calvizie.net/wp-content/uploads/FOTO/` (o una foto senza https://): rifai il passo 3;
   - "è rimasto un segnaposto da completare (elemento con classe \"todo\")" → manca un testo: chiedi a Claude di completarlo o di toglierlo;
   - "Mancano il titolo SEO o la descrizione SEO" → passo 7;
   - "Una pagina partner deve avere una categoria" → passo 8;
   - "Il foglio Google di destinazione non è condiviso con l'account di servizio" → passo 6, punto 2;
   - "Il modulo è attivo ma mancano la destinazione dei contatti o l'email di riserva" → passo 6, punti 1 e 3;
   - "reCAPTCHA non configurato: il form non è protetto dallo spam." → non dipende dalla pagina: chiedi all'amministratore del sito prima di pubblicare;
   - per tutto il resto: copia il testo della barra a Claude e chiedi di correggere i file.
3. Correggi, salva, riapri l'anteprima. La barra la vedono solo gli amministratori: non pubblicare finché la barra rossa non è sparita.
4. Guarda la pagina anche dal telefono (o restringendo la finestra): testi leggibili, foto al loro posto, modulo usabile.
5. **Far vedere la pagina a chi non ha un account** (per esempio il partner che deve approvarla): nel riquadro **Form della landing/pagina**, sezione **Link di anteprima**, clicca **Crea link (valido 7 giorni)** e manda l'indirizzo che compare. Chi lo apre vede la pagina completa, con una fascia gialla "Anteprima" in alto; il modulo si compila ma non invia nulla, anche se è sospeso. **Nuovo link** sostituisce il precedente, **Revoca** lo disattiva subito. Salva le modifiche prima di creare il link.

## 10. Pubblica

1. Clicca **Pubblica**.
2. Apri l'URL finale in una finestra anonima e controlla che si veda come in anteprima.
3. Se il modulo è attivo, fai una prova con dati di test (nome "Prova", la tua email): deve comparire "Richiesta inviata!" e una nuova riga nel foglio. Poi cancella la riga di prova dal foglio.
4. Se la scheda prevede una voce di menu: **Aspetto > Menu**, aggiungi la categoria (partner) o la pagina (landing) nel punto indicato, **Salva menu**.

## Modifiche dopo la pubblicazione

Su una pagina già pubblicata le modifiche ai riquadri **HTML della pagina**, **CSS della pagina** e **Form della landing/pagina** vanno online appena clicchi **Aggiorna**: l'**Anteprima** non le mostra prima. Tieni da parte i file della versione precedente e controlla la pagina subito dopo aver aggiornato (in una finestra anonima, anche dal telefono); se qualcosa non va, rincolla la versione precedente e **Aggiorna**.

- Testi o grafica: chiedi a Claude i file aggiornati, rifai i passi 3-5 solo per le parti cambiate (le foto già caricate restano), poi **Aggiorna** e controlla subito la pagina.
- Sospendere il modulo: riquadro **Form della landing/pagina**, **Sospeso**, **Aggiorna**. Per riattivarlo: **Attivo**, **Aggiorna**. Controlla subito dopo che sulla pagina compaia il messaggio (o il modulo).
