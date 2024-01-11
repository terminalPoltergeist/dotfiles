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

#Set up Go env
# export GOPATH="$HOME/go";
# export PATH="$PATH:$GOPATH/bin";

# export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export GPG_TTY=${tty}
gpgconf --launch gpg-agent

export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

# Start flavours
# base16-shell (https://github.com/chriskempson/base16-shell)
# Base16 Zsh template by terminalPoltergeist (https://github.com/terminalPoltergeist)
# scheme01 scheme by terminalPoltergeist

export background='#121212'
export foreground='#c1c1c1'
export text='#121212'
export cursor='#c1c1c1'
export black='#121212'
export red='#a06666'
export green='#5f87a9'
export yellow='#ddb699'
export blue='#5f8787'
export magenta='#87775f'
export cyan='#8477a4'
export white='#c1c1c1'
export light_black='#444444'
export light_red='#a06666'
export light_green='#5f87a9'
export light_yellow='#ddb699'
export light_blue='#5f8787'
export light_magenta='#87775f'
export light_cyan='#8477a4'
export light_white='#c1c1c1'
# End flavours

# unclear on the correct way to load the completion module.. this works for now
zmodload zsh/complist
# autoload -Uz compinit; compinit
setopt globdots

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

export EDITOR=nvim

export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)" # this auto-activates venvs per project, disabled because it slows down the propmpt

neofetch
uptime
