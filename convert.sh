pandoc ru.md -o ru.pdf \
  --pdf-engine=xelatex \
  -f markdown+superscript \
  -V mainfont="Charter" \
  -V fontsize=11pt \
  -V lang=ru \
  -V otherlang=uk \
  -V geometry='a4paper,left=1.5cm,right=1.5cm,top=2cm,bottom=2cm,headheight=12pt,headsep=6pt,footskip=14pt' \
  --include-in-header=header.tex \
  --include-before-body=inscription.ru.tex

pandoc ua.md -o ua.pdf \
  --pdf-engine=xelatex \
  -f markdown+superscript \
  -V mainfont="Charter" \
  -V fontsize=11pt \
  -V lang=ua \
  -V otherlang=uk \
  -V geometry='a4paper,left=1.5cm,right=1.5cm,top=2cm,bottom=2cm,headheight=12pt,headsep=6pt,footskip=14pt' \
  --include-in-header=header.tex \
  --include-before-body=inscription.ua.tex

