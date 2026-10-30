# Stile delle pagine di calvizie.net

Le pagine nuove devono sembrare della stessa famiglia di quelle già online: le pagine partner dentro il sito e le landing di campagna. Questo file raccoglie colori, misure e componenti comuni. Usali così come sono; cambia solo l'**accento** del partner (vedi sotto) e i testi.

Negli esempi il prefisso è `.<x>-page`. Nella pagina partner ogni selettore inizia così. Nella landing, dove l'intera pagina è tua, puoi usare lo stesso prefisso sul contenitore principale (consigliato) o selettori semplici.

## Carattere generale

- Pulito e chiaro: fondo bianco e grigio chiarissimo che si alternano, schede bianche con bordo sottile e ombra leggera, angoli arrotondati.
- Titoli grandi e molto marcati (Roboto 900), testo arioso (Oxygen, interlinea 1.6).
- Un solo colore forte per le azioni: l'**arancio** dei pulsanti. Il **blu** per numeri, link e fasce scure. Un **accento** del partner per occhielli, icone e piccoli dettagli.
- Niente effetti vistosi: niente animazioni, ombre pesanti o sfondi scuri a tutta pagina.

## Colori e misure (da copiare)

```css
.<x>-page{
  --blu:#1f4497; --blu-scuro:#16336f; --blu-chiaro:#eef2fb;
  --arancio:#f7911e; --arancio-scuro:#e07f0d;
  --ink:#15171a; --testo:#2b3240; --grigio:#5b6472; --grigio-chiaro:#8a93a3;
  --bordo:#e4e8f0; --bg:#f5f7fb; --bianco:#ffffff;
  --verde:#177a45; --verde-bg:#e9f7ef;
  /* accento del partner: tre toni dello stesso colore (vedi sotto) */
  --accento:#2e7d6b; --accento-scuro:#1f5c4e; --accento-bg:#eaf4f1;
  --raggio:14px; --raggio-sm:9px;
  --ombra:0 2px 10px rgba(21,23,26,.06); --ombra-md:0 8px 28px rgba(31,68,151,.12);
}
```

- **Accento:** un colore preso dal marchio del partner (per esempio il verde di un logo), in tre toni: pieno (`--accento`, per occhielli e spunte), scuro (`--accento-scuro`, per testi su fondo chiaro) e chiarissimo (`--accento-bg`, per i fondi di icone e etichette). Se il partner non ha un colore, usa il verde-acqua dell'esempio. Mai più di un accento.
- **Testo sui pulsanti arancio:** blu scuro (`var(--blu-scuro)`), non bianco: il bianco sull'arancio si legge male. Al passaggio del mouse lo sfondo diventa `--arancio-scuro` e il testo `--ink`.
- **Leggibilità:** testi in `--grigio-chiaro` solo se grandi o decorativi, mai sotto 11px; il verde per i testi è `--verde` su `--verde-bg` o su bianco; spaziatura delle lettere oltre `.05em` solo per occhielli brevi in maiuscolo.
- Titoli in `--ink`, testo in `--testo`, testi secondari in `--grigio`.

## Testo

| Elemento | Regola |
|---|---|
| base | `font-family:'Oxygen',system-ui,sans-serif; color:var(--testo); line-height:1.6` |
| h1, h2, h3 | `font-family:'Roboto',sans-serif; color:var(--ink); text-wrap:balance` |
| h1 (apertura) | `font-size:clamp(2rem,3.8vw,2.9rem); font-weight:900; line-height:1.1; letter-spacing:-.015em` |
| h2 (sezioni) | `font-size:clamp(1.55rem,2.8vw,2.05rem); font-weight:900; line-height:1.15; letter-spacing:-.01em` |
| h3 (schede) | `font-size:1.06rem` (grassetto del tema) |
| occhiello sopra i titoli | `font-size:.78rem; font-weight:700; letter-spacing:.14em; text-transform:uppercase; color:var(--accento)` |
| lead dell'apertura | `font-size:1.08rem; max-width:560px` |
| intro di sezione | `margin-top:12px; max-width:680px; font-size:1.03rem` |
| testi lunghi | `max-width:62ch`, paragrafi distanziati di 12px |

Parola chiave del titolo evidenziata come con un pennarello:
`.<x>-page h1 .hl{background:linear-gradient(transparent 62%,rgba(247,145,30,.32) 62%);padding:0 2px}`

## Struttura della pagina

Ordine tipico (da adattare al brief):

1. **Apertura**: due colonne (testo a sinistra, foto o modulo a destra). Logo del partner piccolo sopra l'occhiello, occhiello, h1 con una parola evidenziata, lead, etichette, due pulsanti.
2. **Fascia credenziali**: 3-4 dati brevi su fondo bianco, subito sotto l'apertura.
3. **Sezioni** che si alternano tra fondo chiaro (`--bg`) e bianco, `padding:64px 0` (48px da telefono). Ogni sezione: occhiello, h2, intro, contenuto.
4. **Modulo** in una scheda bianca con ombra, accanto ai passi "come funziona".
5. **Domande frequenti** con `<details>`.
6. **Avvertenza** finale in piccolo, sopra una riga sottile, se serve (per esempio "Le informazioni non sostituiscono il parere del medico").

Contenitore: `max-width:1120px; margin:0 auto; padding:0 20px`. Spazi tra colonne 40-44px, tra schede 18px.

## Componenti

```css
/* pulsanti */
.<x>-page .btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;border-radius:var(--raggio-sm);font-weight:700;font-size:1rem;padding:14px 24px;text-decoration:none;transition:background .15s}
.<x>-page .btn-arancio{background:var(--arancio);color:var(--blu-scuro)}
.<x>-page .btn-arancio:hover{background:var(--arancio-scuro);color:var(--ink)}
.<x>-page .btn-linea{border:2px solid var(--blu);color:var(--blu);background:#fff}
.<x>-page .btn-linea:hover{background:var(--blu-chiaro)}

/* apertura: fondo chiaro con due aloni morbidi (accento in alto a destra, blu in basso a sinistra) */
.<x>-page .hero{background:radial-gradient(circle at 90% 10%,rgba(46,125,107,.14),transparent 40%),radial-gradient(circle at 6% 92%,rgba(31,68,151,.10),transparent 40%),linear-gradient(160deg,#f3f8f6 0%,#ffffff 60%,#f4f6fb 100%);border-bottom:1px solid var(--bordo)}
.<x>-page .hero-in{max-width:1120px;margin:0 auto;padding:44px 20px 52px;display:grid;grid-template-columns:1.1fr .9fr;gap:44px;align-items:center}

/* etichette arrotondate (sotto il lead) */
.<x>-page .badge{display:inline-flex;align-items:center;gap:6px;font-size:.8rem;font-weight:700;padding:6px 12px;border-radius:999px;background:#fff;border:1px solid var(--bordo);color:var(--ink)}

/* foto */
.<x>-page .foto{width:100%;aspect-ratio:4/3;object-fit:cover;border-radius:var(--raggio);box-shadow:var(--ombra-md)}

/* fascia credenziali */
.<x>-page .cred{background:#fff;border-bottom:1px solid var(--bordo)}
.<x>-page .cred-in{max-width:1120px;margin:0 auto;padding:22px 20px;display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.<x>-page .cred-item b{font-family:'Roboto',sans-serif;display:block;color:var(--ink)}
.<x>-page .cred-item span{font-size:.86rem;color:var(--grigio)}

/* schede con icona */
.<x>-page .cards{display:grid;grid-template-columns:repeat(3,1fr);gap:18px;margin-top:28px}
.<x>-page .card{background:#fff;border:1px solid var(--bordo);border-radius:var(--raggio);padding:22px;box-shadow:var(--ombra)}
.<x>-page .card .ico{width:38px;height:38px;border-radius:10px;background:var(--accento-bg);color:var(--accento-scuro);display:flex;align-items:center;justify-content:center;font-weight:900;margin-bottom:12px}

/* passi numerati */
.<x>-page .passi{counter-reset:p;list-style:none;display:grid;gap:14px}
.<x>-page .passi li{counter-increment:p;position:relative;padding-left:44px}
.<x>-page .passi li::before{content:counter(p);position:absolute;left:0;top:0;width:30px;height:30px;border-radius:50%;background:var(--blu);color:#fff;font-family:'Roboto',sans-serif;font-weight:900;display:flex;align-items:center;justify-content:center}

/* ritratto rotondo e citazione */
.<x>-page .profilo{display:grid;grid-template-columns:260px 1fr;gap:40px;align-items:center}
.<x>-page .ritratto{width:100%;aspect-ratio:1/1;border-radius:50%;object-fit:cover}
.<x>-page .citazione{border-left:4px solid var(--arancio);padding:6px 0 6px 18px;font-family:'Roboto',sans-serif;font-size:1.15rem;font-weight:500;color:var(--ink);margin-top:18px}

/* riquadro blu in evidenza (per esempio "per i medici", o l'invito finale) */
.<x>-page .banda-blu{background:linear-gradient(160deg,var(--blu-scuro),var(--blu));color:#fff;border-radius:20px;padding:36px}
.<x>-page .banda-blu h2{color:#fff}
.<x>-page .banda-blu p{color:#dbe3f5}

/* domande frequenti */
.<x>-page .faq{display:grid;gap:10px;max-width:820px}
.<x>-page .faq details{background:#fff;border:1px solid var(--bordo);border-radius:var(--raggio-sm);padding:14px 18px}
.<x>-page .faq summary{cursor:pointer;font-family:'Roboto',sans-serif;font-weight:700;color:var(--ink);list-style:none}
.<x>-page .faq summary::-webkit-details-marker{display:none}
.<x>-page .faq summary::after{content:"+";float:right;color:var(--arancio);font-weight:900}
.<x>-page .faq details[open] summary::after{content:"−"}

/* modulo */
.<x>-page .modulo{background:#fff;border:1px solid var(--bordo);border-radius:var(--raggio);box-shadow:var(--ombra-md);padding:24px}
.<x>-page fieldset{border:0;min-width:0}
.<x>-page .campo label, .<x>-page .campo legend{display:block;font-weight:700;font-size:.88rem;color:var(--ink);margin-bottom:6px}
.<x>-page .scelte{display:flex;flex-wrap:wrap;gap:8px}
.<x>-page .campo input, .<x>-page .campo select, .<x>-page .campo textarea{width:100%;font:inherit;font-size:.95rem;border:1px solid var(--bordo);border-radius:8px;padding:10px 12px;background:#fbfcfe}
.<x>-page .scelte label{display:inline-flex;align-items:center;gap:6px;font-weight:600;font-size:.9rem;border:1px solid var(--bordo);border-radius:999px;padding:7px 12px;background:#fbfcfe}
.<x>-page .consenso{display:flex;gap:10px;align-items:flex-start;font-size:.84rem;margin-top:12px}
.<x>-page .modulo .btn{width:100%;margin-top:18px}
.<x>-page .cp-form-sospeso{background:var(--blu-chiaro);border:1px solid var(--bordo);border-radius:var(--raggio);padding:20px;font-weight:700;color:var(--blu-scuro)}

/* mappa (Google Maps incorporata con un iframe, nessuna chiave) */
.<x>-page .mappa-embed iframe{display:block;width:100%;height:340px;border:0;border-radius:var(--raggio)}
```

Per le scelte singole o multiple del modulo usa le "pillole" `.scelte` (radio o caselle dentro `<label>`), non menu a tendina, quando le opzioni sono 2-4.

## Da telefono

Un `@media (max-width:900px)` porta a una colonna apertura, due colonne, profilo e modulo (`grid-template-columns:1fr`), le schede a una colonna, la fascia credenziali a due, sezioni a `padding:48px 0`, ritratto a `max-width:220px`. Un `@media (max-width:520px)` porta la fascia credenziali a una colonna.

## Solo pagina partner: dentro il sito

Riferimento: le pagine partner già online. La pagina sta nella colonna del tema, larga circa 1200px, su fondo bianco:

- **Fasce a tutta larghezza** (apertura, credenziali, sezioni colorate): sono le uniche dove si usa `100vw`, sempre così:
  `.<x>-page .hero, .<x>-page .cred, .<x>-page .sezione.chiara{width:100vw;margin-left:calc(50% - 50vw);margin-right:calc(50% - 50vw)}`
  Il tema taglia già quello che sborda, quindi non compare lo scorrimento orizzontale. Il contenuto dentro la fascia resta nel contenitore da 1120px.
- Il fondo del sito è bianco: per l'alternanza usa sezioni normali (bianche) e sezioni `.chiara` (`--bg`).
- Il logo del partner va piccolo sopra l'occhiello (circa 72px, `object-fit:contain`), non in una testata propria: menu e intestazione sono quelli del sito.
- Sotto il contenuto WordPress aggiunge la griglia degli articoli della categoria: chiudi la pagina con una sezione bianca o con l'avvertenza, non con una fascia colorata.

## Solo landing: pagina a sé

Riferimento: le landing di campagna già online. La pagina non ha il menu del sito:

- Azzera il margine del browser e dai lo sfondo chiaro a tutta la pagina: `body{margin:0;background:#f5f7fb}` (è l'unico selettore fuori da `.<x>-page`).

- **Testata co-brand** in alto, bianca con bordo sotto, alta circa 62px: nome o logo del partner, una linea verticale sottile, "con **Calvizie.net**" in piccolo. Facoltativa un'etichetta verde a destra (per esempio "Centro verificato").
- **Il modulo sta nell'apertura**, nella colonna destra (larga circa 410px), in una scheda bianca con bordo arancio di 2px e un nastro arancio in cima con l'invito ("Prima consulenza gratuita"). Sotto il pulsante, 2-3 rassicurazioni con la spunta verde ("Nessun impegno", "Ti ricontattiamo entro 24 ore").
- Nell'apertura, sotto il lead: un elenco di vantaggi su due colonne con cerchietti dell'accento e la spunta bianca.
- **Invito finale** prima del piè di pagina: fascia blu a tutta larghezza (`linear-gradient(135deg,var(--blu-scuro),var(--blu))`), titolo bianco, un pulsante arancio che porta al modulo (`href="#modulo"`).
- **Piè di pagina** semplice: fondo `#0f1f45`, testo bianco al 60%, centrato, piccolo.
- Pulsanti a tutta larghezza dentro il modulo; il pulsante del modulo un po' più grande (`padding:16px 20px`) con un'ombra arancio leggera.
