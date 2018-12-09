 default: pdf
all: clean pdf 

pdf: clean report.pdf 

%.pdf: report.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f report.pdf report.aux report.toc report.log report.out
