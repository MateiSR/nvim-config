alias alki="sh ~/Documents/alki/bin/alki.sh"
alias nvchad='NVIM_APPNAME="nvim-nvchad" nvim'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source

### Aliases
alias cd="z"

### Exports
set -x GPG_TTY (tty)
