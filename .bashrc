### I have moved all functionality to other dotfiles, but don't want to delete this file incase I need it later.


#if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
#    export TERM='gnome-256color';
#elif infocmp xterm-256color >/dev/null 2>&1; then
#    export TERM='xterm-256color';
#fi;

#    local s='';
#    local branchName='';
#
#    # Check if the current directory is in a Git repository.
#    git rev-parse --is-inside-work-tree &>/dev/null || return;
#
#    # Check for what branch we’re on.
#    # Get the short symbolic ref. If HEAD isn’t a symbolic ref, get a
#    # tracking remote branch or tag. Otherwise, get the
#    # short SHA for the latest commit, or give up.
#    branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
#        git describe --all --exact-match HEAD 2> /dev/null || \
#        git rev-parse --short HEAD 2> /dev/null || \
#        echo '(unknown)')";
#
#    # Early exit for Chromium & Blink repo, as the dirty check takes too long.
#    # Thanks, @paulirish!
#    # https://github.com/paulirish/dotfiles/blob/dd33151f/.bash_prompt#L110-L123
#    repoUrl="$(git config --get remote.origin.url)";
#    if grep -q 'chromium/src.git' <<< "${repoUrl}"; then
#        s+='*';
#    else
#        # Check for uncommitted changes in the index.
#        if ! $(git diff --quiet --ignore-submodules --cached); then
#            s+='+';
#        fi;
#        # Check for unstaged changes.
#        if ! $(git diff-files --quiet --ignore-submodules --); then
#            s+='!';
#        fi;
#        # Check for untracked files.
#        if [ -n "$(git ls-files --others --exclude-standard)" ]; then
#            s+='?';
#        fi;
#        # Check for stashed files.
#        if $(git rev-parse --verify refs/stash &>/dev/null); then
#            s+='$';
#        fi;
#    fi;
#
#    [ -n "${s}" ] && s=" [${s}]";
#
#    echo -e "${1}${branchName}${2}${s}";
#}
