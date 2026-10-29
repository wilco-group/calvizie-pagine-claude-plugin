# Calvizie Pagine · plugin per Claude

Plugin per Claude con due skill per progettare le pagine di [calvizie.net](https://calvizie.net) in modo che il plugin WordPress **Pagine Calvizie** le accetti senza ritocchi:

- **landing** — landing page a sé (senza menu del sito), per esempio per le campagne;
- **pagina-partner** — pagina di un partner dentro il sito, con sotto gli articoli della sua categoria.

Per ogni pagina Claude consegna l'HTML (e il CSS per le pagine partner), l'elenco delle foto, la **scheda di consegna** compilata e la **guida passo passo** per pubblicarla in WordPress.

## Installazione

In Claude Code:

```
/plugin marketplace add wilco-group/calvizie-pagine-claude-plugin
/plugin install calvizie-pagine@calvizie-pagine
```

Nelle app di Claude che supportano i plugin, aggiungi questo repository GitHub come marketplace dalle impostazioni dei plugin e installa **calvizie-pagine**.

Poi basta chiedere, per esempio: "fai una landing per Calvizie.net per la consulenza gratuita" oppure "fai una pagina partner per Calvizie.net per la Farmacia Esempio".

## Contenuto

```
.claude-plugin/marketplace.json            il marketplace (un solo plugin)
plugins/calvizie-pagine/
  .claude-plugin/plugin.json
  skills/landing/                          SKILL.md, references/, examples/landing-esempio.html
  skills/pagina-partner/                   SKILL.md, references/, examples/farmacia-esempio.html + .css
bin/sync-regole.sh                         allinea i file di riferimento
```

In ogni skill, `references/` contiene:

- `regole-pagine.md` — le regole controllate dal plugin WordPress (R01-R12). **Non modificarlo qui**: la fonte unica è `docs/regole-pagine.md` del repository del plugin WordPress;
- `scheda-consegna.md` — il modello della scheda di consegna;
- `guida-wordpress.md` — la guida per pubblicare.

Gli esempi sono inventati.

## Manutenzione

Quando cambiano le regole nel plugin WordPress, o si modificano scheda e guida:

```bash
bin/sync-regole.sh           # copia le regole dal repository WordPress (accanto a questo) e allinea le due skill
bin/sync-regole.sh --check   # controlla soltanto che i file siano allineati
```

Scheda e guida si modificano **solo** nella skill `landing`: lo script le copia in `pagina-partner`. Se il repository WordPress non sta nella cartella accanto, indica il percorso con `WP_REPO=/percorso/del/repo bin/sync-regole.sh`.

Per controllare un esempio con le stesse regole del plugin, dal repository WordPress:

```bash
php bin/check-html.php <file.html> [file.css] --type=partner   # oppure --type=landing
```

Ricorda di aggiornare `version` in `plugins/calvizie-pagine/.claude-plugin/plugin.json` (e in `marketplace.json`) a ogni modifica delle skill.

Il repository è pubblico: niente chiavi, indirizzi di fogli o Web App, email interne, nomi di persone o contenuti dei clienti.
