# tk

Small CLI to estimate token usage for files and directories.

### Example:

```sh
tk <file.py>

1,234 tks
```

Directory:

```sh
tk .

    TOKENS │ ITEM
───────────┼──────────────────────────────────────────────────
     2,836 │ AGENTS.md
       631 │ prompt-notes.md
       dir │ skills/
       dir │ plugins/
───────────┼──────────────────────────────────────────────────
     3,467 │ TOTAL (2 files, 2 dirs)
```

### Usage

|                        |                                          |
|------------------------|------------------------------------------|
| `tk <file.py>`         | Count one file                           |
| `tk .`                 | Count first-level files and show folders |
| `tk <directory>`       | Count first-level files in a directory   |
| `tk <directory> -r`    | Count files recursively and show a tree  |
| `tk <directory> -i`    | Include images                           |
| `tk <directory> -r -i` | Recursive tree with images               |

### Install

```sh
curl -fsSL https://raw.githubusercontent.com/ruibeard/tk/main/install.sh | sh
```

##### Manual install:

```sh
mkdir -p ~/.local/bin
curl -fsSL https://raw.githubusercontent.com/ruibeard/tk/main/tk -o ~/.local/bin/tk
chmod +x ~/.local/bin/tk
```

Add this to `~/.zshrc`:

```sh
export PATH="$HOME/.local/bin:$PATH"
```
