#!/usr/bin/env bash
# Copia le regole delle pagine dal repository del plugin WordPress (fonte unica)
# nelle due skill, e allinea scheda, guida e stile della skill pagina-partner a quelli
# della skill landing (che fa da originale).
#
# Uso:  bin/sync-regole.sh          copia i file
#       bin/sync-regole.sh --check  controlla soltanto che siano allineati (esce 1 se no)
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WP_REPO="${WP_REPO:-$ROOT/../calvizie-pagine-wordpress-plugin}"
SRC="$WP_REPO/docs/regole-pagine.md"
SKILLS="$ROOT/plugins/calvizie-pagine/skills"

if [[ ! -f "$SRC" ]]; then
	echo "Non trovo $SRC (imposta WP_REPO con il percorso del repository WordPress)." >&2
	exit 2
fi

# origini e destinazioni, nello stesso ordine (array separati: i percorsi possono contenere spazi)
FROM=(
	"$SRC"
	"$SRC"
	"$SKILLS/landing/references/scheda-consegna.md"
	"$SKILLS/landing/references/guida-wordpress.md"
	"$SKILLS/landing/references/stile-pagine.md"
)
TO=(
	"$SKILLS/landing/references/regole-pagine.md"
	"$SKILLS/pagina-partner/references/regole-pagine.md"
	"$SKILLS/pagina-partner/references/scheda-consegna.md"
	"$SKILLS/pagina-partner/references/guida-wordpress.md"
	"$SKILLS/pagina-partner/references/stile-pagine.md"
)

status=0
for i in "${!FROM[@]}"; do
	from="${FROM[$i]}"
	to="${TO[$i]}"
	if [[ "${1:-}" == "--check" ]]; then
		if ! cmp -s "$from" "$to"; then
			echo "Da allineare: ${to#"$ROOT"/}"
			status=1
		fi
	else
		mkdir -p "$(dirname "$to")"
		cp "$from" "$to"
		echo "Copiato: ${to#"$ROOT"/}"
	fi
done
exit $status
