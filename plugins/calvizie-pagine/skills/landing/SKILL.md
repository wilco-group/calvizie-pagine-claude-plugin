---
name: landing
description: Progetta una landing page per calvizie.net (pagina a sé, senza menu del sito, di solito per campagne) e consegna l'HTML pronto per il plugin WordPress Pagine Calvizie, la scheda di consegna compilata e la guida per pubblicarla; poi accompagna chi pubblica passo passo in WordPress fino all'anteprima e alla messa online. Usala anche per guidare la pubblicazione di una landing già pronta ("guidami nella pubblicazione", "come la metto online su calvizie.net"). Usala quando chiedono "fai una landing per Calvizie.net", una pagina di campagna, una landing con modulo contatti per calvizie.net. Per una pagina partner dentro il sito (con menu e articoli della categoria sotto) usa invece la skill pagina-partner.
---

# Landing per calvizie.net

Chi ti scrive non è uno sviluppatore: progetta la pagina con te e poi la pubblica (o la passa a chi la pubblica) incollando i tuoi file in WordPress. Il plugin **Pagine Calvizie** controlla la pagina con delle regole fisse: quello che consegni deve passarle tutte **senza ritocchi**.

Parla in italiano semplice, frasi brevi, niente gergo. Non chiedere mai password, chiavi o codici di accesso.

## Landing o pagina partner?

| | Landing | Pagina partner |
|---|---|---|
| Come si vede | pagina a sé, **senza** menu e piè di pagina del sito | **dentro** il sito, con menu e piè di pagina del tema |
| A cosa serve | campagne, una sola azione (di solito il modulo) | presentare un partner (farmacia, azienda, centro); sotto compaiono gli articoli della sua categoria |
| Indirizzo | `https://calvizie.net/<slug>/` | l'indirizzo della categoria collegata |
| Cosa consegni | un file HTML completo (CSS dentro) | un frammento HTML + un file CSS |

Se la richiesta è una pagina partner, usa la skill **pagina-partner**. Se non è chiaro, chiedilo con una domanda sola.

## Prima di scrivere: cosa ti serve sapere

Raccogli queste informazioni. Chiedi solo quelle che mancano, **una domanda alla volta**; se la persona ha fretta, procedi e segna le risposte mancanti come "DA DECIDERE" nella scheda.

1. Obiettivo della landing e a chi parla.
2. Slug (indirizzo), per esempio `consulenza-gratuita`.
3. Testi: quelli già approvati vanno usati **parola per parola**. Se li scrivi tu, dillo e falli approvare.
4. Foto: quali sono, oppure quali servono.
5. Modulo contatti: c'è? quali campi? quali consensi? dove arrivano i contatti (foglio Google), email di riserva, attivo o sospeso al lancio?
6. SEO: titolo, descrizione, immagine di condivisione, se la pagina va indicizzata.

Non inventare mai dati di fatto: nomi, titoli professionali, prezzi, numeri, risultati clinici, indirizzi, recensioni. Se mancano, metti un segnaposto `todo` (vedi sotto) e annotalo nella scheda. Sui temi di salute niente promesse di guarigione.

## Il contratto HTML della landing

Consegni **un solo file HTML completo**, con questa struttura:

```html
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Titolo SEO | Calvizie.net</title>
<meta name="description" content="Descrizione SEO, massimo 155 caratteri circa.">
<meta property="og:title" content="Titolo per la condivisione">
<meta property="og:description" content="Descrizione per la condivisione">
<meta property="og:image" content="https://calvizie.net/wp-content/uploads/FOTO/foto-condivisione.jpg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oxygen:wght@400;700&family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">
<style>
.<x>-page { ... }
</style>
</head>
<body>
<main class="<x>-page">
  ... tutto il contenuto ...
</main>
</body>
</html>
```

Regole:

- **`<title>` e `<meta name="description">` non vuoti**: per le landing il SEO si legge da qui (Rank Math non ha effetto).
- Se la landing non va indicizzata (per esempio solo per campagne), aggiungi `<meta name="robots" content="noindex, nofollow">` nel `<head>`.
- **Un solo `<main class="<x>-page">`** che contiene tutto. `<x>` è lo slug o un suo accorciamento: minuscole, cifre e trattini (esempio: `consulenza-gratuita-page`).
- **CSS tutto in un `<style>` nel `<head>`**, con ogni selettore che inizia con `.<x>-page` (per le landing non è obbligatorio, ma tiene il codice ordinato e riutilizzabile). Il riquadro "CSS della pagina" in WordPress resta vuoto.
- **Font:** Roboto per i titoli, Oxygen per il testo, caricati con il `<link>` qui sopra (la landing non ha i font del tema).
- **Colori di partenza** (quelli del sito), da cambiare solo se il brief lo chiede: blu `#1f4497`, blu scuro `#0d0b52`, arancio per i pulsanti `#f7911e` (con testo blu scuro: il bianco sull'arancio non si legge), testo `#2b3240`, sfondo chiaro `#f5f7fb`.
- La landing non ha menu né piè di pagina del sito: metti tu in alto un'intestazione semplice (il nome "Calvizie.net" in testo o il logo come foto) e in fondo un piè di pagina con il link all'informativa privacy `https://calvizie.net/informativa-privacy-clienti/`.
- **Niente script**: niente Google Tag Manager, Analytics, pixel, reCAPTCHA, jQuery. Il plugin aggiunge da solo Tag Manager e lo script del modulo. Per aprire/chiudere (per esempio le domande frequenti) usa `<details><summary>`.
- **Niente immagini incorporate** (`data:image`, base64), né nell'HTML né nel CSS. Le icone semplici si fanno con caratteri (✓, →) o con SVG scritto direttamente nell'HTML.
- Pagina **responsive**: deve funzionare bene da telefono (almeno un `@media (max-width: 760px)`).
- Accessibilità di base: un solo `<h1>`, titoli in ordine, `alt` su ogni foto, contrasto leggibile, etichette (`<label>`) su ogni campo.

## Foto

Le foto sono **file separati** che chi pubblica carica nella Libreria media di WordPress. Nell'HTML (e nel CSS) le scrivi **sempre** così:

```html
<img src="https://calvizie.net/wp-content/uploads/FOTO/foto-apertura.jpg" alt="Descrizione breve della foto">
```

- `https://calvizie.net/wp-content/uploads/FOTO/` è un indirizzo provvisorio: dopo il caricamento va sostituito con la cartella vera (la guida spiega come; lo fai tu quando ti danno l'indirizzo di una foto caricata: vedi "Dopo la consegna"). Finché c'è, il plugin lo segnala (regola R02) e la pagina non va pubblicata: è voluto, serve a non dimenticare la sostituzione. Quindi **consegna comunque con `FOTO/`** (non inventare cartelle come `2026/11`), e avvisa la persona che va sostituito.
- Mai `__URL_FOTO__`, mai percorsi relativi (`foto.jpg`, `/img/foto.jpg`): il plugin li segnala.
- Nomi dei file: minuscole, trattini, niente spazi né accenti (`foto-apertura.jpg`). Se la persona ti ha dato le foto con altri nomi, dille come rinominarle.
- Consiglia foto larghe al massimo 2000 pixel, in JPG (o PNG per i loghi), già alleggerite.
- Elenca tutte le foto nella scheda di consegna: nome del file, dove si vede, testo alternativo.

## Modulo contatti

Un modulo che invia i contatti è un `<form data-lead-form>`. Il plugin si occupa di tutto il resto (invio, protezione anti-spam, foglio Google, email di riserva, messaggio di conferma): **non aggiungere** `action`, `method`, campi nascosti, script o reCAPTCHA.

Modello da seguire:

```html
<form data-lead-form class="modulo">
  <label for="m-nome">Nome e cognome *</label>
  <input id="m-nome" name="nome" type="text" autocomplete="name" required>

  <label for="m-email">Email *</label>
  <input id="m-email" name="email" type="email" autocomplete="email" required>

  <label for="m-telefono">Telefono</label>
  <input id="m-telefono" name="telefono" type="tel" autocomplete="tel">

  <label for="m-messaggio">Messaggio</label>
  <textarea id="m-messaggio" name="messaggio" rows="4"></textarea>

  <label class="consenso"><input type="checkbox" name="privacy" required>
    Ho letto l'<a href="https://calvizie.net/informativa-privacy-clienti/" target="_blank" rel="noopener">informativa privacy</a> e acconsento al trattamento dei miei dati per essere ricontattato. *</label>

  <button type="submit">Invia la richiesta</button>
</form>
```

Regole dei campi:

- **Obbligatori sempre:** `nome` ed `email`, e almeno un consenso (`privacy` oppure `consenso_<nome>`).
- **Nomi standard:** `nome`, `email`, `telefono`, `messaggio`, `privacy`. Consensi in più: `consenso_<nome>` (esempi: `consenso_marketing`, `consenso_dati_salute`, `consenso_comunicazione_partner`).
- **Altri campi:** nomi in minuscolo con trattino basso (`professione`, `citta`, `canale_preferito`): diventano le **colonne del foglio**, quindi devono essere chiari.
- **Foglio con intestazioni già scritte:** se la scheda indica i nomi delle colonne del foglio, aggiungi a ogni campo `data-colonna="<intestazione esatta>"` (esempio: `<input name="nome" data-colonna="Nome e cognome">`). Per le colonne fisse metti sul `<form>` `data-colonna-data`, `data-colonna-pagina` e `data-colonna-url` (esempio: `data-colonna-data="Data e ora"`). Il `name` resta quello standard: cambia solo la colonna in cui finisce il valore.
- **Nomi vietati** (li usa il plugin): `token`, `action`, `website`, `landing_id`, `pagina`, `cp_nonce`, `g-recaptcha-response`, `gclid`, `fbclid` e tutto ciò che inizia con `utm_`. Evita i nomi `Data`, `Pagina` e `URL` (con l'iniziale maiuscola).
- **Consensi mai già spuntati** (niente `checked`). Ogni consenso obbligatorio ha `required`; quelli facoltativi no. Ogni consenso è una casella separata, con il suo testo.
- **Caselle sì/no senza `value`**: il plugin le scrive nel foglio come "Sì".
- **Scelte multiple:** caselle con lo stesso nome seguito da `[]` e un `value` leggibile (`name="interessi[]" value="Trapianto"`). Per i menu (`<select>`) e le scelte singole (`radio`) usa `value` leggibili in italiano: finiscono così come sono nel foglio. Il primo `<option>` di un menu obbligatorio è `<option value="">Scegli…</option>`.
- `id` unici nella pagina (se ci sono due moduli, usa prefissi diversi).
- Il plugin mette il messaggio di esito ("Richiesta inviata!" o l'errore) in cima al modulo, e quando il modulo è sospeso lo sostituisce con un riquadro `.cp-form-sospeso`: dagli uno stile (`.<x>-page .cp-form-sospeso { ... }`).
- I dati del modulo non vanno mai in statistiche o pixel: il plugin invia a Tag Manager solo l'evento `landing_lead` con il nome della pagina.

## Parti da completare e sezioni nascoste

- **Da completare:** un testo che manca va in un elemento con classe `todo`, per esempio `<span class="todo">orari di apertura</span>`, con uno stile giallo ben visibile (`.<x>-page .todo { background:#fff3cd; }`). Il plugin lo segnala nella barra rossa dell'anteprima: avvisa la persona di non pubblicare finché la barra rossa lo mostra, ed elenca ogni `todo` nella scheda, con chi deve fornire il testo.
- **Sezioni pronte ma da tenere nascoste** al lancio (per esempio un video non ancora approvato): mettile in un commento HTML con una riga che spiega quando attivarle:

```html
<!-- SEZIONE NASCOSTA: video. Da attivare quando il video è approvato: togliere questa riga e la riga "FINE". -->
<!-- <section class="video"> ... </section> -->
<!-- FINE SEZIONE NASCOSTA -->
```

  Dentro un commento non scrivere mai `--`. Annota le sezioni nascoste nella scheda, in "Regole speciali".

## Cosa consegni

Consegna **file da scaricare**, non solo testo nella chat:

1. `<slug>.html` — la landing completa.
2. `scheda-consegna-<slug>.md` — il modello di `references/scheda-consegna.md` compilato in ogni voce.
3. L'elenco delle foto (è anche nella scheda): nome del file, dove va, testo alternativo.
4. La guida per pubblicare: `references/guida-wordpress.md`, allegata così com'è (non riassumerla: i passi e i nomi dei pulsanti sono quelli esatti di WordPress).

Se vuoi far vedere un'anteprima nella chat, fallo a parte: i file da consegnare restano quelli del contratto, con gli indirizzi `FOTO/`.

Esempio completo e corretto: `examples/landing-esempio.html`. Prendilo come riferimento per struttura e modulo, non per i testi.

## Prima di consegnare: controllo finale

Rileggi `references/regole-pagine.md` (sono le regole che il plugin controlla, R01-R12) e correggi **ogni** punto (unica eccezione: l'indirizzo provvisorio `FOTO/` resta finché la persona non ti dà la cartella vera). Poi verifica questo elenco, una riga alla volta:

- [ ] Documento completo con `<title>` e `<meta name="description">` compilati.
- [ ] Tutto il contenuto dentro un solo `<main class="<x>-page">`.
- [ ] Nessun `data:image` o base64, né nell'HTML né nel CSS.
- [ ] Ogni `<img src>` inizia con `https://calvizie.net/wp-content/uploads/FOTO/` (o con la cartella vera, se la persona te l'ha data); nessun `__URL_FOTO__`, nessun percorso relativo. R02 segnala `FOTO/` finché non è sostituito: in consegna è normale, non toglierlo.
- [ ] Ogni `<form>` ha `data-lead-form`, i campi `nome` ed `email` e almeno un consenso `privacy` o `consenso_...`.
- [ ] Nessun consenso già spuntato; i consensi obbligatori hanno `required`.
- [ ] Nessun nome di campo vietato; gli altri nomi sono in minuscolo con trattino basso.
- [ ] Nessuno script, nessun codice di Tag Manager o statistiche.
- [ ] Nessun `todo` rimasto, oppure ognuno è nella scheda (e la persona sa che la pagina non si pubblica finché ci sono).
- [ ] Scheda di consegna compilata in ogni voce (o "DA DECIDERE: chi").

Se trovi un errore, correggilo e rifai il controllo. Alla fine di' in due righe cosa consegni e cosa resta da fare, e proponi di guidare la pubblicazione (sezione qui sotto).

## Dopo la consegna: guidare la pubblicazione

Chi pubblica non è uno sviluppatore. Dopo la consegna proponi: "Vuoi che ti guidi passo passo nella pubblicazione in WordPress?". Lo stesso vale se ti chiedono "guidami nella pubblicazione", "come la metto online" o simili, anche in una chat nuova: in quel caso fatti dare i file e la scheda (o rifalli dalla conversazione) prima di iniziare.

Segui `references/guida-wordpress.md`, **nello stesso ordine** e con le stesse parole dei menu e dei pulsanti (il sito usa l'editor classico di WordPress, in italiano). Salta i passi che non riguardano questa pagina (per esempio categoria e CSS per una landing, o il modulo se non c'è): se ne salti, dillo in una riga al primo messaggio.

**Un passo alla volta.** Per ogni passo scrivi:

1. il numero e il nome del passo, e quanti ne restano (per esempio "Passo 3 di 11 · Crea la pagina");
2. **dove**: il percorso esatto nel menu e il nome del riquadro (per esempio "menu a sinistra **Pagine > Aggiungi pagina**", "riquadro **Form della landing/pagina**, colonna di destra");
3. **cosa fare**, in frasi brevi numerate;
4. **cosa incollare**: ogni valore preso dalla scheda (titolo, slug, nome e slug della categoria, indirizzo del foglio, email di riserva, titolo e descrizione SEO) in un **blocco di codice a sé**, uno per campo, preceduto dal nome esatto del campo in cui va. Niente valori dentro le frasi: così si copiano senza errori. Per HTML e CSS indica il **nome del file** da aprire e copiare per intero, non incollarne il contenuto nella chat;
5. **come capire che è fatto** (cosa deve vedere sullo schermo);
6. alla fine: "Scrivimi **fatto** quando hai finito, oppure dimmi cosa vedi se qualcosa non torna."

Poi **aspetta la risposta** prima del passo successivo. Non mandare più passi insieme, anche se te lo chiedono, a meno che dicano esplicitamente di volere l'elenco completo (in quel caso dai la guida intera, già adattata alla pagina e con i valori della scheda).

Nei passi in cui serve il tuo lavoro:

- **Foto (passo 1):** chiedi di incollarti l'indirizzo di una foto caricata e i nomi che WordPress ha cambiato. Poi rifai i file con la cartella vera al posto di `https://calvizie.net/wp-content/uploads/FOTO/` (e i nomi corretti), controlla che non resti `FOTO/` e consegnali come file nuovi con lo stesso nome. Di' chiaramente di usare da qui in avanti solo questi. Nello stesso messaggio puoi dare il passo successivo: la consegna dei file non conta come passo.
- **Valori "DA DECIDERE"** nella scheda: quando arrivi al campo, dillo, spiega cosa succede se resta vuoto (per esempio il modulo resta sospeso) e chiedi se il valore c'è o se si va avanti lasciandolo in sospeso.
- **Barra rossa dell'anteprima (passo 9):** chiedi di copiarti il testo della barra (o di mandarti una schermata). Spiega in parole semplici cosa significa ogni riga e, se la correzione è nei file, rifai i file e indica di nuovo i passi 4-5. Ripeti finché la barra non c'è più.
- **Schermate:** se la persona ti manda una schermata, usala per dirle esattamente dove cliccare. Se quello che vede non corrisponde alla guida (un riquadro che manca, un pulsante con un altro nome), non inventare: dille di chiedere all'amministratore del sito e passale la frase da mandargli (la guida ne ha una pronta al passo 3).

Regole che valgono per tutta la guida:

- Non chiedere mai password, codici o chiavi, né di incollarli nella chat; non servono.
- Il modulo resta **Sospeso** fino al passo 12, e si pubblica solo quando la barra rossa non c'è più e ci sono le approvazioni scritte previste dalla scheda. Se la persona vuole saltare questi controlli, ricordale in una frase cosa si rischia; la decisione resta sua.
- Alla fine riepiloga in poche righe: indirizzo della pagina, stato del modulo, cosa resta da fare e chi lo fa (dalla scheda, sezioni "Regole speciali" e "Cose ancora da completare").
