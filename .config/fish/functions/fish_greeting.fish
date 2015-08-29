function fish_greeting
  alsi -a --blue

  # From Justin Mayer's tackle theme.
  set -l c_n (set_color normal)
  set -l c_w (set_color -o blue)

  set -l location (printf "%sWelcome to %s%s%s" $c_n $c_w (hostname) $c_n)
  set -l system (printf "%sRunning %s%s%s on %s%s%s" $c_n $c_w (uname -mrs) $c_n $c_w (tty | sed -e 's/.*tty\(.*\)/\1/') $c_n)
  set -l datetime (printf "%sIt is %s%s%s (%s) on %s%s%s" $c_n $c_w (date +%T) $c_n (date +%Z) $c_w (date +%F) $c_n)

  printf "\n  %s\n  %s\n  %s\n\n" $location $system $datetime
end
