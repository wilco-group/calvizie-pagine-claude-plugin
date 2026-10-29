# Calvizie Pagine · plugin per Claude

Plugin per Claude con due skill per progettare le pagine di [calvizie.net](https://calvizie.net) in modo che il plugin WordPress **Pagine Calvizie** le accetti senza ritocchi:

- **landing** — landing page a sé (senza menu del sito), per esempio per le campagne;
- **pagina-partner** — pagina di un partner dentro il sito, con sotto gli articoli della sua categoria.

Per ogni pagina Claude consegna l'HTML (e il CSS per le pagine partner), l'elenco delle foto, la **scheda di consegna** compilata e la **guida passo passo** per pubblicarla in WordPress.

## Installazione

### Su claude.ai (consigliata)

1. Apri **Customize > Plugins** e scegli **Add marketplace**.
2. Inserisci `wilco-group/calvizie-pagine-claude-plugin`.
3. Installa il plugin **calvizie-pagine**.

**Aggiornare.** Quando esce una nuova versione, apri di nuovo **Customize > Plugins**, entra nel marketplace e premi **Check for updates**, poi aggiorna il plugin.

### Alternativa: skill singole con gli zip

Se il marketplace non è disponibile, scarica gli zip dalla pagina [Releases](https://github.com/wilco-group/calvizie-pagine-claude-plugin/releases) (ultima versione, sezione *Assets*): `landing.zip` e `pagina-partner.zip`. Poi in claude.ai apri **Customize > Skills > Upload** e carica ciascuno zip. Per aggiornare, scarica gli zip nuovi e caricali di nuovo.

### In Claude Code

```
/plugin marketplace add wilco-group/calvizie-pagine-claude-plugin
/plugin install calvizie-pagine@calvizie-pagine
```

Poi basta chiedere, per esempio: "fai una landing per Calvizie.net per la consulenza gratuita" oppure "fai una pagina partner per Calvizie.net per la Farmacia Esempio".

## Contenuto

```
.claude-plugin/marketplace.json            il marketplace (un solo plugin)
plugins/calvizie-pagine/
  .claude-plugin/plugin.json
  skills/landing/                          SKILL.md, references/, examples/landing-esempio.html
  skills/pagina-partner/                   SKILL.md, references/, examples/farmacia-esempio.html + .css
bin/sync-regole.sh                         allinea i file di riferimento
.github/workflows/release.yml              a ogni tag v*, crea la Release con gli zip delle skill
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

Gli esempi usano l'indirizzo provvisorio `https://calvizie.net/wp-content/uploads/FOTO/`, che la regola R02 segnala di proposito finché non viene sostituito con la cartella vera della Libreria media: per controllarli, sostituiscilo prima con una cartella qualsiasi (per esempio `https://calvizie.net/wp-content/uploads/2026/11/`).

## Pubblicare una nuova versione

1. Esegui `bin/sync-regole.sh` (allinea regole, scheda e guida) e `bin/sync-regole.sh --check`.
2. Aggiorna `version` in `plugins/calvizie-pagine/.claude-plugin/plugin.json` e in `.claude-plugin/marketplace.json` (stesso numero).
3. Fai il commit delle modifiche.
4. Crea il tag `vX.Y.Z` (stesso numero della versione) e mandalo su GitHub: `git tag vX.Y.Z && git push origin vX.Y.Z`.
5. Il workflow `.github/workflows/release.yml` crea la Release e allega uno zip per ogni skill. Controlla con `gh release view vX.Y.Z --repo wilco-group/calvizie-pagine-claude-plugin`.

Il repository è pubblico: niente chiavi, indirizzi di fogli o Web App, email interne, nomi di persone o contenuti dei clienti.
