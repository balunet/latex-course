all: latex-course-intro.pdf latex-course-beamer.pdf

latex-course-intro.pdf: latex-course-intro.tex preamble.tex structure-title.pdf structure-sections.pdf structure-crossref.pdf media-graphics.pdf bib-example.pdf structure-exercise-solution.pdf recap-exercise.pdf recap-exercise-solution.pdf table-example.pdf 
	pdflatex -shell-escape latex-course-intro
	pdflatex -shell-escape latex-course-intro

latex-course-beamer.pdf: latex-course-beamer.tex preamble.tex beamer-minimal.pdf beamer-theme.pdf beamer-exercise.pdf beamer-exercise-solution.pdf
	pdflatex -shell-escape latex-course-beamer
	pdflatex -shell-escape latex-course-beamer

table-example.pdf: table-example.tex
	pdflatex table-example

structure-title.pdf: structure-title.tex
	pdflatex structure-title

structure-sections.pdf: structure-sections.tex
	pdflatex structure-sections

structure-crossref.pdf: structure-crossref.tex
	pdflatex structure-crossref
	pdflatex structure-crossref

structure-exercise-solution.pdf: structure-exercise-solution.tex
	pdflatex structure-exercise-solution
	pdflatex structure-exercise-solution
	pdflatex structure-exercise-solution

media-graphics.pdf: media-graphics.tex
	pdflatex media-graphics
	pdflatex media-graphics

bib-example.pdf: bib-example.tex bib-example.bib
	pdflatex bib-example
	bibtex bib-example
	pdflatex bib-example
	pdflatex bib-example

recap-exercise.pdf: recap-exercise.tex
	pdflatex recap-exercise

recap-exercise-solution.pdf: recap-exercise-solution.tex
	pdflatex recap-exercise-solution

beamer-minimal.pdf: beamer-minimal.tex
	pdflatex beamer-minimal

beamer-theme.pdf: beamer-theme.tex
	pdflatex beamer-theme

beamer-exercise.pdf: beamer-exercise.tex
	pdflatex beamer-exercise

beamer-exercise-solution.pdf: beamer-exercise-solution.tex
	pdflatex beamer-exercise-solution
	pdflatex beamer-exercise-solution

clean:
	rm -f *.log *.aux *.out *.nav *.snm *.toc *.vrb *.pyg *.bbl *.blg *.pdf 
	rm -rf _minted*

