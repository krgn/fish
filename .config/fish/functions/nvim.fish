function nvim --description "start neovim with true color support"
  set NVIM_TUI_ENABLE_TRUE_COLOR 1
  command nvim $argv
end
