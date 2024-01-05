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
export PATH="$PATH:$HOME/bin";
for d in $HOME/bin/*/; do
  export PATH="$PATH:$d"
done
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
# scheme01 scheme by terminalPoltergeist mod. from metalelf0's black-metal

export background='#121212'
export foreground='#c1c1c1'
export text='#121212'
export cursor='#c1c1c1'
export black='#121212'
export red='#a06666'
export green='#5f8766'
export yellow='#8477a4'
export blue='#87775f'
export magenta='#a06666'
export cyan='#5f8787'
export white='#c1c1c1'
export light_black='444444'
export light_red='a06666'
export light_green='5f8766'
export light_yellow='8477a4'
export light_blue='87775f'
export light_magenta='a06666'
export light_cyan='5f8787'
export light_white='c1c1c1'
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
for file in ~/dotfiles/.{path,prompt,aliases,functions,extra}; do
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

neofetch
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
uptime