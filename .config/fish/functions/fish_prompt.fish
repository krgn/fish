function fish_prompt
  # leave some space between commands
  printf '\n'

  set_color CAEB82
  printf '%s' (whoami)
  set_color normal
  printf ' at '

  set_color 87AFFF
  printf '%s' (hostname|cut -d . -f 1)
  set_color normal
  printf ' in '

  set_color 95E454
  printf '%s' (prompt_pwd)
  set_color normal
  printf ' with '

  set_color C0BC6C
  printf '%d todos' (todo|wc -l|sed -e 's/ *//')
  set_color normal

  # Line 2
  echo
  if test $VIRTUAL_ENV
    printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
 end
 printf '↪ '
 set_color normal
end
