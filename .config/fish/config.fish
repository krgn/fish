############################
# fish shell configuration #
############################

# Make vim the default editor
set -g VISUAL gvim
set -g EDITOR vim
set -u fish_key_bindings fish_vi_key_bindings

# Color the output of system utilites using cope.
#set -g fish_user_paths (cope_path) $fish_user_paths

# Add personal scripts to path.
set -g fish_user_paths $fish_user_paths ~/bin

# Add \LaTeX binaries and docs to relevant paths.
set -g fish_user_paths $fish_user_paths /usr/local/texlive/2015/bin/x86_64-linux
# the man and infopaths seem to still be configured correctly from when I was
# using bash, but adding in the future is going to be hard

# Set default browser.
if [ -n $DISPLAY ]
  set BROWSER firefox
else
  set BROWSER links
end

# Colorize man pages.  Notice it's not wrapped in a function like bash does.
set -x LESS_TERMCAP_mb (printf "\033[01;31m")  
set -x LESS_TERMCAP_md (printf "\033[01;38;5;74m")  
set -x LESS_TERMCAP_me (printf "\033[0m")  
set -x LESS_TERMCAP_se (printf "\033[0m")  
set -x LESS_TERMCAP_so (printf "\033[38;5;246m")  
set -x LESS_TERMCAP_ue (printf "\033[0m")  
set -x LESS_TERMCAP_us (printf "\033[04;38;5;146m") 

# Enable command not found.  Function doesn't have a shebang line, so I guess it
# is more of a complex alias.  At any rate, I see the same thing even with this
# commented.
#if [ -r /usr/share/doc/pkgfile/command-not-found.bash ]
#  . /usr/share/doc/pkgfile/command-not-found.bash
#end

set tacklebox_path ~/.hook
set tacklebox_plugins pathogen
source ~/.tacklebox/tacklebox.fish

# A theme based on the wombat256i colors.
set fish_color_command CAEB82
set fish_color_quote 95E454
set fish_color_end 87AFFF
set fish_color_comment C0BC6C
set fish_color_param EBFFBE
set fish_color_operator FFDEAD
set fish_color_redirection FFDEAD
set fish_color_error E5786D
set fish_color_match ECEE90 -b 857B6F
set fish_color_escape E5786D
set fish_color_autosuggestion 9AB55E
