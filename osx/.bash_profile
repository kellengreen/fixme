##############
# GIT BRANCH #
##############

source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

YELLOW="\[\033[1;33m\]"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
RESET="\[\033[0m\]"

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1="$YELLOW\$(git_branch)$RESET$GREEN\u@\h$RESET $BLUE\w$RESET $ "
