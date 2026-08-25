# Blitztext Homebrew Tap

Installation:

```bash
brew install --cask immodigit/blitztext/blitztext
```

App-Repo: https://github.com/immodigit/blitztext-app

## Wie das Cask aktuell bleibt

`.github/workflows/sync-cask.yml` läuft stündlich, vergleicht die Version im
Cask mit dem neuesten Release von `immodigit/blitztext-app` und zieht Version
und SHA256 nach. Die Cask-Vorlage kommt dabei aus dem App-Repo
(`homebrew/Casks/blitztext.rb`), damit sie nur an einer Stelle gepflegt wird —
Änderungen direkt an dieser Datei werden beim nächsten Release überschrieben.

Bewusst ziehend statt schiebend: Ein Push aus dem App-Repo hierher bräuchte ein
langlebiges Token, weil das `GITHUB_TOKEN` immer nur auf sein eigenes
Repository schreiben darf. So kommt die Kette ganz ohne Secret aus.

Sofort statt bis zu einer Stunde warten: Actions → **Cask aktualisieren** →
*Run workflow*.
