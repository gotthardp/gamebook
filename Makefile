destpath = /root/texty

all: $(destpath)/gamebk1.zip $(destpath)/gamebk2.zip

$(destpath)/gamebk1.zip: gamebook.pdf
	zip -r9 gamebk1.zip gamebook.pdf soubory
	mv gamebk1.zip $(destpath)/gamebk1.zip

$(destpath)/gamebk2.zip: gamebook.ps
	zip -r9 gamebk2.zip gamebook.ps soubory
	mv gamebk2.zip $(destpath)/gamebk2.zip

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

clean:
	rm -f *.aux
	rm -f gamebook.log
	rm -f gamebook.dvi
	rm -f gamebook.ps
	rm -f gamebook.pdf
