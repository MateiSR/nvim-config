alias zyp="sudo zypper"
alias zypup="sudo zypper dup"
alias alki="sh ~/Documents/alki/bin/alki.sh"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source

### Aliases
alias cd="z"


