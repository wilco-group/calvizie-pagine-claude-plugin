---
name: pagina-partner
description: Progetta una pagina partner per calvizie.net, cioè una pagina per calvizie.net dedicata a un partner (per esempio una farmacia, un'azienda o un centro) che si vede dentro il sito, con menu e piè di pagina e con sotto gli articoli della sua categoria. Consegna HTML e CSS pronti per il plugin WordPress Pagine Calvizie, la scheda di consegna compilata e la guida per pubblicarla; poi accompagna chi pubblica passo passo in WordPress fino all'anteprima e alla messa online. Usala anche per guidare la pubblicazione di una pagina partner già pronta ("guidami nella pubblicazione", "come la metto online su calvizie.net"). Usala quando chiedono "fai una pagina partner per Calvizie.net", la pagina di un partner o di un brand su calvizie.net. Per una landing di campagna, senza menu del sito, usa invece la skill landing.
---

# Pagina partner per calvizie.net

Chi ti scrive non è uno sviluppatore: progetta la pagina con te e poi la pubblica (o la passa a chi la pubblica) incollando i tuoi file in WordPress. Il plugin **Pagine Calvizie** controlla la pagina con delle regole fisse: quello che consegni deve passarle tutte **senza ritocchi**.

Parla in italiano semplice, frasi brevi, niente gergo. Non chiedere mai password, chiavi o codici di accesso.

## Pagina partner o landing?

| | Pagina partner | Landing |
|---|---|---|
| Come si vede | **dentro** il sito, con menu e piè di pagina del tema | pagina a sé, **senza** menu e piè di pagina del sito |
| A cosa serve | presentare un partner; sotto il contenuto WordPress mostra da solo gli articoli della sua categoria | campagne, una sola azione (di solito il modulo) |
| Indirizzo | l'indirizzo della categoria collegata, es. `https://calvizie.net/category/<slug-categoria>/` | `https://calvizie.net/<slug>/` |
| Cosa consegni | un frammento HTML + un file CSS | un file HTML completo (CSS dentro) |

Se la richiesta è una landing, usa la skill **landing**. Se non è chiaro, chiedilo con una domanda sola.

## Prima di scrivere: cosa ti serve sapere

Raccogli queste informazioni. Chiedi solo quelle che mancano, **una domanda alla volta**; se la persona ha fretta, procedi e segna le risposte mancanti come "DA DECIDERE" nella scheda.

1. Chi è il partner e cosa deve capire chi legge la pagina.
2. Nome e slug della categoria (per esempio `farmacia-esempio`), e sotto quale voce del menu va.
3. Testi: quelli già approvati vanno usati **parola per parola**. Se li scrivi tu, dillo e falli approvare.
4. Foto e logo del partner: quali sono, oppure quali servono.
5. Modulo contatti: c'è? quali campi? quali consensi (per esempio la comunicazione dei dati al partner)? dove arrivano i contatti (foglio Google), email di riserva, attivo o sospeso al lancio, chi dà il via?
6. SEO: titolo, descrizione, immagine di condivisione.

Non inventare mai dati di fatto: nomi, titoli professionali, prezzi, numeri, risultati clinici, indirizzi, orari, recensioni. Se mancano, metti un segnaposto `todo` (vedi sotto) e annotalo nella scheda. Sui temi di salute niente promesse di guarigione.

## Il contratto HTML della pagina partner

Consegni **un frammento**: solo il contenuto, che WordPress mette tra il menu e il piè di pagina del sito.

```html
<main class="<x>-page">
  <section class="apertura"> ... </section>
  <section class="chi-siamo"> ... </section>
  <section id="contatti" class="contatti"> ... modulo ... </section>
</main>
```

Regole:

- **Niente `<!DOCTYPE>`, `<html>`, `<head>`, `<body>`, `<title>`, `<meta>`, `<link>`, `<style>`, `<script>`.** Titolo e descrizione SEO vanno nella scheda (si compilano in Rank Math); il CSS va nel file CSS.
- **Tutto dentro un solo `<main class="<x>-page">`**: fuori dal `<main>` non c'è nient'altro (solo commenti HTML, se servono). `<x>` è il nome breve del partner: minuscole, cifre e trattini (esempio: `farmacia-esempio-page`). Scegli un nome che non possa coincidere con le classi del tema (niente `td-`, `tdb-`, `page`, `main`).
- Un solo `<h1>` (il titolo della pagina): il tema non stampa il titolo da solo.
- **Non disegnare la griglia degli articoli**: la aggiunge WordPress sotto il contenuto, già con il suo stile (riquadri con foto, titolo, estratto e pagine numerate). Non scrivere CSS per `.cp-articoli`. Al massimo un titolo di sezione in fondo, del tipo "Gli articoli su <partner>", se il brief lo chiede.
- Niente menu, intestazione o piè di pagina propri: ci sono quelli del sito.
- **Niente script.** Per aprire/chiudere (per esempio le domande frequenti) usa `<details><summary>`.
- **Niente immagini incorporate** (`data:image`, base64), né nell'HTML né nel CSS. Le icone semplici si fanno con caratteri (✓, →) o con SVG scritto direttamente nell'HTML.
- Accessibilità di base: titoli in ordine, `alt` su ogni foto, contrasto leggibile, etichette (`<label>`) su ogni campo.

## Il CSS

Consegni un **file CSS separato**, che va nel riquadro "CSS della pagina".

- **Ogni selettore inizia con `.<x>-page`**, anche dentro `@media`: `.<x>-page h2 { ... }`, `.<x>-page .scheda:hover { ... }`, `.<x>-page, .<x>-page * { box-sizing: border-box; }`. Così gli stili non toccano il resto del sito. Mai `body`, `h1`, `:root`, `*` da soli.
- Le variabili dei colori si dichiarano su `.<x>-page { --blu: #1f4497; ... }`, non su `:root`.
- Il tema ha già i suoi stili su titoli, paragrafi, link, campi e pulsanti: **imposta tu** margini, font, dimensioni e colori degli elementi che usi, e azzera i margini (`.<x>-page, .<x>-page * { margin: 0; padding: 0; box-sizing: border-box; }`, poi rimetti gli spazi dove servono).
- **Font:** Roboto per i titoli, Oxygen per il testo. Sono già caricati dal sito: niente `@import` né `@font-face`.
- **Colori, misure e componenti:** quelli di `references/stile-pagine.md` (vedi "Lo stile" qui sotto), con l'accento del partner. Testo dei pulsanti arancio in blu scuro: il bianco sull'arancio non si legge.
- Contenuto centrato con un contenitore (`.<x>-page .container { max-width: 1120px; margin: 0 auto; padding: 0 20px; }`). Le fasce colorate vanno a tutta larghezza **solo** con la regola `width:100vw; margin-left:calc(50% - 50vw); margin-right:calc(50% - 50vw)` descritta in `references/stile-pagine.md`; nessun altro uso di `100vw`, niente `position: fixed`.
- Pagina **responsive**: deve funzionare bene da telefono (almeno un `@media (max-width: 900px)`, come in `references/stile-pagine.md`).
- In testa al file un commento breve: di che pagina è e dove si incolla.

## Lo stile: come le pagine già online

Le pagine nuove devono sembrare della stessa famiglia di quelle già pubblicate su calvizie.net. **Prima di scrivere il CSS leggi `references/stile-pagine.md`** e usa i suoi colori, le misure dei titoli e i componenti (apertura, fascia credenziali, schede, passi numerati, domande frequenti, modulo) così come sono, cambiando solo l'accento del partner e i testi. Struttura e componenti dell'esempio in `examples/` seguono già quello stile. Se il brief chiede qualcosa che lo stile non prevede, costruiscilo con gli stessi colori, raggi e ombre.

## Foto

Le foto (logo compreso) sono **file separati** che chi pubblica carica nella Libreria media di WordPress. Nell'HTML (e nel CSS) le scrivi **sempre** così:

```html
<img src="https://calvizie.net/wp-content/uploads/FOTO/partner-logo.png" alt="Logo del partner">
```

- `https://calvizie.net/wp-content/uploads/FOTO/` è un indirizzo provvisorio: dopo il caricamento va sostituito con la cartella vera (la guida spiega come; lo fai tu quando ti danno l'indirizzo di una foto caricata: vedi "Dopo la consegna"). Finché c'è, il plugin lo segnala (regola R02) e la pagina non va pubblicata: è voluto, serve a non dimenticare la sostituzione. Quindi **consegna comunque con `FOTO/`** (non inventare cartelle come `2026/11`), e avvisa la persona che va sostituito.
- Mai `__URL_FOTO__`, mai percorsi relativi (`foto.jpg`, `/img/foto.jpg`): il plugin li segnala.
- Nomi dei file: minuscole, trattini, niente spazi né accenti (`partner-laboratorio.jpg`). Se la persona ti ha dato le foto con altri nomi, dille come rinominarle.
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

  <label class="consenso"><input type="checkbox" name="consenso_comunicazione_partner" required>
    Acconsento a che i miei dati siano comunicati a <nome del partner> per rispondere alla richiesta. *</label>

  <button type="submit">Invia la richiesta</button>
</form>
```

Regole dei campi:

- **Obbligatori sempre:** `nome` ed `email`, e almeno un consenso (`privacy` oppure `consenso_<nome>`).
- **Nomi standard:** `nome`, `email`, `telefono`, `messaggio`, `privacy`. Consensi in più: `consenso_<nome>` (esempi: `consenso_comunicazione_partner`, `consenso_dati_salute`, `consenso_marketing`).
- **Altri campi:** nomi in minuscolo con trattino basso (`professione`, `citta`, `canale_preferito`): diventano le **colonne del foglio**, quindi devono essere chiari.
- **Foglio con intestazioni già scritte:** se la scheda indica i nomi delle colonne del foglio, aggiungi a ogni campo `data-colonna="<intestazione esatta>"` (esempio: `<input name="nome" data-colonna="Nome e cognome">`). Per le colonne fisse metti sul `<form>` `data-colonna-data`, `data-colonna-pagina` e `data-colonna-url` (esempio: `data-colonna-data="Data e ora"`). Il `name` resta quello standard: cambia solo la colonna in cui finisce il valore.
- **Nomi vietati** (li usa il plugin): `token`, `action`, `website`, `landing_id`, `pagina`, `cp_nonce`, `g-recaptcha-response`, `gclid`, `fbclid` e tutto ciò che inizia con `utm_`. Evita i nomi `Data`, `Pagina` e `URL` (con l'iniziale maiuscola).
- **Consensi mai già spuntati** (niente `checked`). Ogni consenso obbligatorio ha `required`; quelli facoltativi no. Ogni consenso è una casella separata, con il suo testo.
- **Caselle sì/no senza `value`**: il plugin le scrive nel foglio come "Sì".
- **Scelte multiple:** caselle con lo stesso nome seguito da `[]` e un `value` leggibile (`name="interessi[]" value="Lozioni"`). Per i menu (`<select>`) e le scelte singole (`radio`) usa `value` leggibili in italiano: finiscono così come sono nel foglio. Il primo `<option>` di un menu obbligatorio è `<option value="">Scegli…</option>`.
- `id` unici nella pagina (se ci sono due moduli, usa prefissi diversi).
- Il plugin mette il messaggio di esito ("Richiesta inviata!" o l'errore) in cima al modulo, e quando il modulo è sospeso lo sostituisce con un riquadro `.cp-form-sospeso`: dagli uno stile (`.<x>-page .cp-form-sospeso { ... }`).
- I dati del modulo non vanno mai in statistiche o pixel: il plugin invia a Tag Manager solo l'evento `landing_lead` con il nome della pagina.

## Parti da completare e sezioni nascoste

- **Da completare:** un testo che manca va in un elemento con classe `todo`, per esempio `<span class="todo">orari di apertura</span>`, con uno stile giallo ben visibile (`.<x>-page .todo { background:#fff3cd; }`). Il plugin lo segnala nella barra rossa dell'anteprima: avvisa la persona di non pubblicare finché la barra rossa lo mostra, ed elenca ogni `todo` nella scheda, con chi deve fornire il testo.
- **Sezioni pronte ma da tenere nascoste** al lancio (per esempio un'intervista non ancora approvata): mettile in un commento HTML con una riga che spiega quando attivarle:

```html
<!-- SEZIONE NASCOSTA: intervista. Da attivare quando il video è approvato: togliere questa riga e la riga "FINE". -->
<!-- <section class="intervista"> ... </section> -->
<!-- FINE SEZIONE NASCOSTA -->
```

  Dentro un commento non scrivere mai `--`. Annota le sezioni nascoste nella scheda, in "Regole speciali".

## Cosa consegni

Consegna **file da scaricare**, non solo testo nella chat:

1. `<slug>.html` — il frammento, dentro `<main class="<x>-page">`.
2. `<slug>.css` — il CSS, tutto sotto `.<x>-page`.
3. `scheda-consegna-<slug>.md` — il modello di `references/scheda-consegna.md` compilato in ogni voce (categoria e SEO compresi).
4. L'elenco delle foto (è anche nella scheda): nome del file, dove va, testo alternativo.
5. La guida per pubblicare: `references/guida-wordpress.md`, allegata così com'è (non riassumerla: i passi e i nomi dei pulsanti sono quelli esatti di WordPress).

Se vuoi far vedere un'anteprima nella chat, fallo a parte: i file da consegnare restano quelli del contratto, con gli indirizzi `FOTO/`.

Esempio completo e corretto: `examples/farmacia-esempio.html` con `examples/farmacia-esempio.css`. Prendilo come riferimento per struttura, stile, CSS e modulo, non per i testi.

## Prima di consegnare: controllo finale

Rileggi `references/regole-pagine.md` (sono le regole che il plugin controlla, R01-R12) e correggi **ogni** punto (unica eccezione: l'indirizzo provvisorio `FOTO/` resta finché la persona non ti dà la cartella vera). Poi verifica questo elenco, una riga alla volta:

- [ ] Nessun `<html>`, `<head>`, `<body>`, `<style>`, `<script>` nell'HTML.
- [ ] Tutto il contenuto dentro un solo `<main class="<x>-page">`, niente fuori.
- [ ] Ogni selettore del CSS inizia con `.<x>-page`, anche dentro `@media`; nessun `:root`, `body`, `@import`.
- [ ] Nessun `data:image` o base64, né nell'HTML né nel CSS.
- [ ] Ogni `<img src>` inizia con `https://calvizie.net/wp-content/uploads/FOTO/` (o con la cartella vera, se la persona te l'ha data); nessun `__URL_FOTO__`, nessun percorso relativo. R02 segnala `FOTO/` finché non è sostituito: in consegna è normale, non toglierlo.
- [ ] Ogni `<form>` ha `data-lead-form`, i campi `nome` ed `email` e almeno un consenso `privacy` o `consenso_...`.
- [ ] Nessun consenso già spuntato; i consensi obbligatori hanno `required`.
- [ ] Nessun nome di campo vietato; gli altri nomi sono in minuscolo con trattino basso.
- [ ] Nessun `todo` rimasto, oppure ognuno è nella scheda (e la persona sa che la pagina non si pubblica finché ci sono).
- [ ] Scheda compilata in ogni voce: categoria, titolo e descrizione SEO compresi (o "DA DECIDERE: chi").

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
