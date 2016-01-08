function vim --description "start neovim with true color support"
  begin
    set -lx NVIM_TUI_ENABLE_TRUE_COLOR 1
    nvim $argv
  end 
end
