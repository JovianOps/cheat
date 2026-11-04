# cheat

Personal CLI cheatsheets. Store short references in plain text files and look them up instantly.

## Features

- Zero dependencies
- Plain text files - edit with any editor
- Cross-platform shell script
- Fast lookup by topic name
- Lists available cheatsheets when called with no args

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/JovianOps/cheat/master/install.sh | sh
```

Or manually:
```bash
git clone https://github.com/JovianOps/cheat
cp cheat ~/.local/bin/cheat && chmod +x ~/.local/bin/cheat
mkdir -p ~/.cheat
```

## Usage

```bash
cheat        # list available cheatsheets
cheat git    # show ~/.cheat/git or ~/.cheat/git.txt or ~/.cheat/git.md
```

## Adding cheatsheets

Create a file in `~/.cheat/` with the topic name:

```bash
echo "git rebase -i HEAD~3" >> ~/.cheat/git
echo "docker ps -a" >> ~/.cheat/docker
```

Use `.txt` or `.md` extensions if preferred - cheat will find them.

## Notes

All files live locally in `~/.cheat/`. No network calls after install.
