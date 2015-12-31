function fish_prompt
  # leave some space between commands
  printf '\n'

  # line 1: useful information
  set_color blue --bold
  printf '┌─['

  set_color normal
  printf (date "+$c2%H$c0:$c2%M$c0:$c2%S")

  set_color blue --bold
  printf ']─['

  set_color normal
  printf '%s@%s' (whoami) (hostname|cut -d . -f 1)

  set_color blue --bold
  printf ']\n'

  # line 2: command
  printf '└──>'

  set_color normal
  printf ' %s ' (prompt_pwd)

  set_color blue --bold
  printf '$ '
  set_color normal

end
