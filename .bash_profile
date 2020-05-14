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

function messages {
  # Parameter is a iMessage account (email or phone number i.e. +33616.... )
  if [ $# -lt 1 ]; then
    echo "Enter a iMessage account (email of phone number i.e +33616.....) "
  fi

  sqlite3 ~/Library/Messages/chat.db "
    SELECT
      is_from_me,
      datetime(date/1000000000 + strftime(\"%s\", \"2001-01-01\"), \"unixepoch\", \"localtime\") AS date,
      text
    FROM message
    JOIN handle ON (handle.ROWID = message.handle_id)
    WHERE handle.id = '$1'
    ORDER BY date
  "
}
