# Regole delle pagine Calvizie

Questo file è la fonte unica delle regole: il plugin Pagine Calvizie le controlla (barra rossa in anteprima per gli amministratori) e lo stesso motore è usato da `bin/check-html.php` per controllare una pagina prima di incollarla. Ogni regola ha un titolo `## R0x`; l'elenco deve coincidere con `CP_Checks::RULES`.

## R01
Niente immagini incorporate nell'HTML o nel CSS (`data:image`, base64): appesantiscono la pagina. Le foto si caricano nella Libreria media e si usa il loro indirizzo.

Corretto: `<img src="https://calvizie.net/wp-content/uploads/2026/10/foto.jpg" alt="">`

Sbagliato: `<img src="data:image/png;base64,iVBORw0KGgo...">`

## R02
Ogni `<img src>` deve essere un indirizzo assoluto che inizia con `https://`. Il segnaposto `__URL_FOTO__` e i percorsi relativi vengono segnalati.

Viene segnalato anche l'indirizzo provvisorio `https://calvizie.net/wp-content/uploads/FOTO/` usato nelle consegne (in `<img src>`, `srcset`, nei `<meta>` come `og:image` e negli `url()` del CSS): dopo aver caricato le foto nella Libreria media va sostituito con l'indirizzo vero della loro cartella. Nei commenti HTML e CSS non conta.

Corretto: `<img src="https://calvizie.net/wp-content/uploads/2026/10/foto.jpg" alt="">`

Sbagliato: `<img src="__URL_FOTO__" alt="">`, `<img src="/img/foto.jpg" alt="">` oppure `<img src="https://calvizie.net/wp-content/uploads/FOTO/foto.jpg" alt="">`

## R03
Nessun elemento con classe `todo`: è il segnaposto per le parti ancora da completare.

Corretto: `<p>Orari: lunedì-venerdì 9-19</p>`

Sbagliato: `<p class="todo">Inserire gli orari</p>`

## R04
Ogni `<form>` deve avere l'attributo `data-lead-form`, altrimenti non invia i contatti al foglio.

Corretto: `<form data-lead-form> ... </form>`

Sbagliato: `<form action="/invia"> ... </form>`

## R05
Il modulo contatti (`data-lead-form`) deve avere i campi `nome`, `email` e almeno un consenso chiamato `privacy` oppure `consenso_...`.

Corretto: `<input name="nome"> <input name="email"> <input type="checkbox" name="privacy">`

Sbagliato: `<input name="nome"> <input name="telefono">`

## R06
Nessuna casella di consenso (`privacy`, `consenso_...`) può essere già spuntata: il consenso lo dà la persona.

Corretto: `<input type="checkbox" name="privacy" required>`

Sbagliato: `<input type="checkbox" name="privacy" checked>`

## R07
Pagina partner: niente tag `<html>`, `<head>`, `<body>`. Si incolla solo il contenuto; titolo e descrizione si compilano nei campi SEO. Le landing possono avere il documento completo.

Corretto: `<main class="farmacia-page"> ... </main>`

Sbagliato: `<html><head>...</head><body> ... </body></html>`

## R08
Pagina partner: tutto il contenuto sta in un solo `<main class="<x>-page">` e ogni selettore CSS inizia con `.<x>-page`, così gli stili non toccano il resto del sito. Dentro `@media` e simili si controllano i selettori interni; `@font-face` e `@keyframes` sono ignorati.

Corretto: `.farmacia-page h1 { color: #222; }`

Sbagliato: `h1 { color: #222; }` oppure contenuto fuori dal `<main>`

## R09
Se il modulo è attivo servono sia la destinazione dei contatti sia l'email di riserva (dove arrivano i contatti se il foglio non risponde). Altrimenti il modulo resta sospeso.

Corretto: modulo attivo con destinazione e email di riserva compilate.

Sbagliato: modulo attivo con la destinazione vuota.

## R10
Il foglio Google di destinazione deve essere condiviso con l'account di servizio del plugin con il ruolo **Editor**. Se non è condiviso i contatti non vi arrivano. Attenzione: con il ruolo **Visualizzatore** (Viewer) il controllo passa e la barra rossa non compare, ma il plugin non riesce a scrivere: ogni contatto arriva solo all'email di riserva e parte un'allerta.

Corretto: foglio condiviso con l'account di servizio come Editor.

Sbagliato: foglio privato, non condiviso, oppure condiviso solo come Visualizzatore.

## R11
Titolo SEO e descrizione SEO non devono essere vuoti. Per le pagine partner si compilano nei campi della pagina; per le landing con documento completo si leggono da `<title>` e `<meta name="description">` (per un frammento la regola non si applica).

Corretto: `<title>Farmacia Esempio</title><meta name="description" content="Consulenza gratuita">`

Sbagliato: titolo o descrizione vuoti.

## R12
Pagina partner: deve avere una categoria assegnata.

Corretto: categoria "Partner" selezionata.

Sbagliato: nessuna categoria.
