all: gamebook.pdf gamebook-a5.pdf

gamebook.dvi: gamebook.tex hry.tex prdetektiv.tex prhadanky.tex \
prislovi.tex prjazyk.tex prkouzla.tex prkvizy.tex prlogika.tex \
prvedecka.tex prviteze.tex zaprameny.tex

	latex gamebook.tex

gamebook.ps: gamebook.dvi
	dvips gamebook.dvi -o gamebook.ps

gamebook.pdf: gamebook.tex hry.tex prdetektiv.tex prhadanky.tex \
prislovi.tex prjazyk.tex prkouzla.tex prkvizy.tex prlogika.tex \
prvedecka.tex prviteze.tex zaprameny.tex

	pdflatex gamebook.tex

gamebook-a5.pdf: gamebook-a5.tex hry.tex prdetektiv.tex prhadanky.tex \
prislovi.tex prjazyk.tex prkouzla.tex prkvizy.tex prlogika.tex \
prvedecka.tex prviteze.tex zaprameny.tex

	pdflatex gamebook-a5.tex

clean:
	rm -f *.aux
	rm -f gamebook.{log,toc,dvi,ps,pdf}
	rm -f gamebook-a5.{log,toc,dvi,ps,pdf}
