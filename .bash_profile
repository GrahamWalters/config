# Aliases
alias vi=vim
alias ll="ls -al"

# https://github.com/magicmonty/bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
  # if not found in /usr/local/etc, try the brew --prefix location
  [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
      . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

# goenv
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# gpg-agent
if ! pgrep -x "gpg-agent" > /dev/null
then
  eval $(gpg-agent --daemon)
fi

# misc
export HISTTIMEFORMAT="%d/%m/%y %T "
