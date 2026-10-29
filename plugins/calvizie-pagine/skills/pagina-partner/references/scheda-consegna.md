# Scheda di consegna

Va consegnata insieme all'HTML (e al CSS per le pagine partner). Chi pubblica la pagina la legge per prima: deve trovarci tutto, senza dover chiedere.

Come si compila:

- ogni voce ha una risposta; se una cosa non si sa ancora scrivi **DA DECIDERE: chi decide** (per esempio "DA DECIDERE: il responsabile marketing");
- niente password, chiavi o codici di accesso: non servono e non vanno mai scritti qui;
- frasi brevi: chi legge non deve interpretare.

Copia il modello qui sotto e compilalo.

---

```markdown
# Scheda di consegna · <nome della pagina>

## La pagina
- Tipo: <landing | pagina partner>
- Template da scegliere in WordPress: <"Landing (Pagine Calvizie)" | "Pagina partner (Pagine Calvizie)">
- Titolo della pagina in WordPress: <titolo>
- Slug: <slug, minuscolo con trattini, es. consulenza-gratuita>
- URL finale: <landing: https://calvizie.net/<slug>/ | partner: l'indirizzo della categoria, es. https://calvizie.net/category/<slug-categoria>/>
- Classe del contenitore: <x>-page (l'HTML è dentro <main class="<x>-page">)
- File da incollare:
  - <nome-file>.html → riquadro "HTML della pagina"
  - <nome-file>.css → riquadro "CSS della pagina" (solo pagina partner; per la landing il CSS è già dentro l'HTML e il riquadro resta vuoto)

## Categoria (solo pagina partner)
- Categoria collegata: <nome della categoria>
- La categoria esiste già? <sì | no: va creata in Articoli > Categorie, con slug <slug-categoria> e categoria madre <categoria madre o "nessuna">>
- Voce di menu: <dove va nel menu del sito, oppure "nessuna">

## SEO
- Titolo SEO: <massimo 60 caratteri circa>
- Descrizione SEO: <massimo 155 caratteri circa>
- Immagine di condivisione (Open Graph): <nome-file della foto>
- Dove si compilano: <landing: sono già nell'HTML, in <title> e <meta name="description"> | partner: nel riquadro Rank Math della pagina>
- Indicizzazione: <indicizzata | non indicizzata (noindex), per esempio per una landing solo da campagne>

## Modulo contatti
- Il modulo c'è? <sì | no>
- Campi del modulo (diventano le colonne del foglio): <nome, email, telefono, messaggio, privacy, ...>
- Campi obbligatori: <...>
- Consensi: <privacy obbligatorio; consenso_<nome> obbligatorio/facoltativo, con il testo della casella>
- Destinazione dei contatti: <foglio Google da usare (nome del foglio e chi lo crea/condivide) | URL /exec di una Web App | DA DECIDERE: chi decide>
- Email di riserva (riceve i contatti se il foglio non risponde): <indirizzo email | DA DECIDERE: chi decide>
- Stato del modulo al lancio: <attivo | sospeso>
- Chi dà il via per attivarlo: <persona o ruolo, oppure "nessuno: attivo da subito">
- Messaggio quando è sospeso: <testo, oppure "quello predefinito: Le richieste sono momentaneamente chiuse.">
- Dati da non tracciare: i valori del modulo non vanno mai in statistiche, pixel o dataLayer (il plugin invia solo l'evento "landing_lead" con il nome della pagina).

## Regole speciali
- <per esempio: sezione video nascosta (commento nell'HTML) da attivare quando il video è approvato>
- <per esempio: modulo da sospendere su richiesta del partner>
- <scadenze: data di lancio, data entro cui approvare i testi>
- <se non ce ne sono: "nessuna">

## Cose ancora da completare
- <ogni parte rimasta con classe "todo" o "DA DECIDERE", con chi deve fornirla>
- <se non ce ne sono: "nessuna: la pagina è pronta">

## Foto
Indirizzo provvisorio nell'HTML: https://calvizie.net/wp-content/uploads/FOTO/<nome-file>
Dopo il caricamento in Libreria media va sostituito "https://calvizie.net/wp-content/uploads/FOTO/" con la cartella vera (vedi la guida di pubblicazione).

| File | Dove si vede | Testo alternativo (alt) | Note |
|---|---|---|---|
| <nome-file.jpg> | <sezione> | <descrizione breve> | <es. "anche immagine di condivisione", "larghezza massima 2000 px"> |
```
