function todo --description "Steve Losh's task manager"
  python ~/bin/t/t.py --task-dir ~/.tasks --list tasks --delete-if-empty $argv
end
