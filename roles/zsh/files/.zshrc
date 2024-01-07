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

#Add `~/bin` to the `$PATH`
export PATH="$PATH:$HOME/.local/bin";
# for d in $HOME/bin/*/; do
#   export PATH="$PATH:$d"
# done
export FLAVOURS_CONFIG_FILE="$HOME/.config/flavours/config.toml";
export LUA_PATH="./?.lua;;"

#Set up Go env
# export GOPATH="$HOME/go";
# export PATH="$PATH:$GOPATH/bin";

# export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
export GPG_TTY=${tty}
gpgconf --launch gpg-agent

# Start flavours
# base16-shell (https://github.com/chriskempson/base16-shell)
# Base16 Zsh template by terminalPoltergeist (https://github.com/terminalPoltergeist)
# Gruvbox light, soft scheme by Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)

export background='#f2e5bc'
export foreground='#504945'
export text='#f2e5bc'
export cursor='#504945'
export black='#f2e5bc'
export red='#9d0006'
export green='#79740e'
export yellow='#b57614'
export blue='#076678'
export magenta='#8f3f71'
export cyan='#427b58'
export white='#504945'
export light_black='bdae93'
export light_red='9d0006'
export light_green='79740e'
export light_yellow='b57614'
export light_blue='076678'
export light_magenta='8f3f71'
export light_cyan='427b58'
export light_white='282828'
# End flavours

zmodload -i zsh/complist

bindkey -M menuselect '^M' .accept-line
zstyle ':completion:::::default' menu yes select
bindkey '^[[Z' reverse-menu-complete
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' insert-tab false

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.config/zsh/.{path,prompt,aliases,functions,extra}; do
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

neofetch
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
uptime
