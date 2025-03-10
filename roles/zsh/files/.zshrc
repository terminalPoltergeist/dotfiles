#              ,---------------------------,
#              |  /---------------------\  |
#              | |                       | |
#              | |     Jack Nemitz       | |
#              | |      .dotfiles        | |
#              | |        zshrc          | |
#              | |                       | |
#              |  \_____________________/  |
#              |___________________________|
#            ,---\_____     []     _______/------,
#          /         /______________\           /|
#        /___________________________________ /  | ___
#        |                                   |   |    )
#        |  _ _ _                 [-------]  |   |   (
#        |  o o o                 [-------]  |  /    _)_
#        |__________________________________ |/     /  /
#    /-------------------------------------/|      ( )/
#  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
#/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

source $HOME/dotfiles/path
export FLAVOURS_CONFIG_FILE="$HOME/.config/flavours/base16/config.toml";
export LUA_PATH="./?.lua;;"

export GUM_INPUT_CURSOR_FOREGROUND=$red
export GUM_INPUT_PROMPT_FOREGROUND=$yellow
export GUM_CHOOSE_CURSOR_FOREGROUND=$yellow
export GUM_CHOOSE_ITEM_FOREGROUND=$green
export GUM_FILE_CURSOR_FOREGROUND=$yellow
export GUM_FILE_SELECTED_FOREGROUND=$yellow
export GUM_FILE_SYMLINK_FOREGROUND=$purple
export GUM_FILE_DIRECTORY_FOREGROUND=$green
export GUM_FILE_FILE_FOREGROUND=$blue
export GUM_FILE_PERMISSIONS_FOREGROUND=$red
export GUM_CONFIRM_PROMPT_FOREGROUND=$yellow
export GUM_CONFIRM_PROMPT_BACKGROUND=$background
export GUM_CONFIRM_SELECTED_FOREGROUND=$background
export GUM_CONFIRM_SELECTED_BACKGROUND=$red
export GUM_CONFIRM_UNSELECTED_BACKGROUND=$background
export GUM_CONFIRM_UNSELECTED_FOREGROUND=$foreground
export GUM_INPUT_WIDTH=120

#Set up Go env
export GOPATH="$HOME/go";
export PATH="$PATH:$GOPATH/bin";

export PATH="$PATH:$HOME/.local/bin/google-cloud-sdk/bin"

# export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export GPG_TTY=$(tty)
export KEYID="1C49F42B6AAC7CEEB18DEAF60EEBC9431694A88E"
gpgconf --launch gpg-agent

export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

# Start flavours
# base16-shell (https://github.com/chriskempson/base16-shell)
# Base16 Zsh template by terminalPoltergeist (https://github.com/terminalPoltergeist)
# spirited-haku-dark scheme by terminalPoltergeist

export background='#1d2122'
export foreground='#c2c8cb'
export text='#1d2122'
export cursor='#c2c8cb'
export black='#1d2122'
export red='#457080'
export green='#a6889b'
export yellow='#747291'
export blue='#73a489'
export magenta='#457080'
export cyan='#8f4f48'
export white='#c2c8cb'
export light_black='#536061'
export light_red='#457080'
export light_green='#a6889b'
export light_yellow='#747291'
export light_blue='#73a489'
export light_magenta='#457080'
export light_cyan='#8f4f48'
export light_white='#eceeef'
# End flavours

# unclear on the correct way to load the completion module.. this works for now
zmodload zsh/complist
# autoload -Uz compinit; compinit
autoload bashcompinit && bashcompinit
setopt menucomplete globdots
setopt ignoreeof

# zstyle contexts
# contexts are defined by ':competion:<func>:<completer>:<command>:<argument>:<tag>'
# ':completion:' is used for all completion syles
# elements (such as <func> or <tag>) can be omitted if not set, but colons will remain
# ex. ':completion:*default' which matches every function and uses the default completer
# <completer> specifies which type of completion to do, some (not all) options include [complete, approximate, matches]
# <command> is simply a command
# <tag> specifies WHAT can be completed in the current context
#   `zstyle ':competion:....' tag-order ...` will allow you to specify the precedence for tags
#   ex. will list only local-directories if your match is ambiguous, ie. `cd <tab>` will show only local-directories, `cd a<tab>` will show only local-directories that start with "a", if there are none it will show sub-directories of directories in cdpath that start with "a"
#     zsyle ':competion:*:cd:*' tag-order local-directories path-directories
#
# zstyle configs are of the form `zstyle <context> <style> <pattern>` where <context> is described above

zstyle ':completion:*' completer _complete _correct _ignored  _approximate # specifies to first try generic completion, then spelling corrections, then any matches that were ignored with ignored-patterns, then approximate completion
zstyle ':completion:*' max-errors 2 # specifies a maximum of 2 incorrect characters to form an approximate match defined above
zstyle ':completion:*' ignored-patterns '[./][../]' # ignore ./ and ../
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' insert-tab false
zstyle ':completion:*' file-sort access # sort the completion menu by last access time
zstyle ':completion:*:default' list-colors 'ex=01;31:di=01;36:*.gitignore=01;33' # colorize completion menu

bindkey -M menuselect '^M' .accept-line # carriage return accepts the completed line (instead of just inserting the completion, it runs the command)
bindkey '^[[Z' reverse-menu-complete # shift-tab navigates backwards through completion menu

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.config/zsh/.{prompt,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

bindkey '^R' history-incremental-search-backward
export EDITOR=nvim
autoload -z edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
set -o vi
set editing-mode vi
set show-mode-in-prompt on
set vi-ins-mode-string +
set vi-cmd-mode-string:

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)" # this auto-activates venvs per project, disabled because it slows down the propmpt

neofetch
uptime

alias gam="/Users/jacknemitz/bin/gam7/gam"
