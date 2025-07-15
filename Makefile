.PHONY: all clean

all: justforfun_book.pdf

justforfun_book.pdf: contents/about.tex contents/info.tex contents/title.tex contents/chapters/ch1.tex contents/chapters/ch2.tex contents/chapters/ch3.tex contents/chapters/ch4.tex contents/chapters/ch5.tex preamable/commands.tex preamable/packages.tex preamable/style.tex book.tex
	xelatex book.tex
	xelatex book.tex
	xelatex book.tex
	mv book.pdf justforfun_book.pdf

clean:
	rm -f *.tux *.log *.out *.toc *.aux
	find . -type f -name '*~' -exec rm -f '{}' \;
