# mpip
When using the PIP command, this tool automatically checks if VENV is active.

## Usage
1. Copy the contents of `mpip.sh` to `$HOME/.bashrc`
1. Reload `.bashrc` by running `source $HOME/.bashrc`
1. Use `mpip` instead of `pip` in your terminal

## NOTE
This tool is developed for Windows10/Bash environment; if you want to use it under Linux, Zsh, etc., please rewrite the paths in the script appropriately.

For example, if you want to use this tool in Linux/Bash environment, change the `SRC` in `mpip.sh` as follows:

```bash
# before
SRC=$(realpath "${VIRTUAL_ENV}/Scripts/python.exe")

# after
SRC=$(realpath "${VIRTUAL_ENV}/bin/python3")
```
