PANDOC := pandoc
FLAGS := --pdf-engine=xelatex \
  -f markdown+superscript \
  -V mainfont="Charter" \
  -V fontsize=11pt \
  -V lang=ru \
  -V otherlang=uk \
  -V geometry='a4paper,left=1.5cm,right=1.5cm,top=2cm,bottom=2cm,headheight=12pt,headsep=6pt,footskip=14pt' \
  --include-in-header=header.tex 

.PHONY: all

all: ru.pdf ua.pdf

ru.pdf: ru.md
	$(PANDOC) ru.md -o ru.pdf \
		--include-before-body=inscription.ru.tex \
		$(FLAGS)

ua.pdf: ua.md
	$(PANDOC) ua.md -o ua.pdf \
		--include-before-body=inscription.ua.tex \
		$(FLAGS)
