function pdflatex --description "Enforce clean pdflatex output"
  mkdir out
  command pdflatex --output-directory out
end
