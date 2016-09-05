############################
# fish shell configuration #
############################

# make neovim the default editor
set -x EDITOR nvim
set -x SUDO_EDITOR nvim
set -x SYSTEMD_EDITOR nvim

alias vi 'nvim'
alias vim 'nvim'
alias vimdiff 'nvim -d'

# add personal scripts to path
set -g fish_user_paths $fish_user_paths ~/bin

# add LaTeX bins and docs to path
#set -g fish_user_paths $fish_user_paths /usr/local/texlive/2015/bin/x86_64-linux
#set -g MANPATH $MANPATH /usr/local/texlive/2015/texmf-dist/doc/man
#set -g INFOPATH $INFOPATH /usr/local/texlive/2015/texmf-dist/doc/info

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
#set -x fish_user_paths (cope_path) $fish_user_paths

# source local stuff
if [ -e $HOME/.config/fish/config.local.fish ]
  source $HOME/.config/fish/config.local.fish
end
