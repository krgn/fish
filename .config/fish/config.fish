############################
# fish shell configuration #
############################

# make neovim the default editor
alias vim nvim
set -x EDITOR nvim

# add personal scripts to path
set -g fish_user_paths $fish_user_paths ~/bin

# set the default browser
if [ -n $DISPLAY ]
  set BROWSER firefox
else
  set BROWSER links
end

# colorize man pages
set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
set -x LESS_TERMCAP_md (printf "\033[01;38;5;74m")  
set -x LESS_TERMCAP_me (printf "\033[0m")  
set -x LESS_TERMCAP_se (printf "\033[0m")  
set -x LESS_TERMCAP_so (printf "\033[38;5;246m")  
set -x LESS_TERMCAP_ue (printf "\033[0m")  
set -x LESS_TERMCAP_us (printf "\033[04;38;5;146m") 

# colorize output
set -x fish_user_paths (cope_path) $fish_user_paths
