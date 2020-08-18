file=Report.tex # Default build file
#ifeq ($(findstring .,$(file)),.)
#    # Found
#    source=$(basename $(file))
#else
#    # Not found
#    source=$(file)
#endif
source=$(basename $(file))
CWD=$(PWD)
AUX = $(wildcard *.aux)
BIBTEX = $(echo %.aux,$(AUX))

all:
	#(cd Graph; make all)
	make --always-make acm
acm:
	# Compile using PDF-Latex
	$(MAKE) file=$(source) single
ieee:
	# Compile using DVI->PS->PDF
	latex -interaction=nonstopmode $(source).tex
	bibtex $(source)
	bibtex gen
	bibtex th
	latex -interaction=nonstopmode $(source).tex
	dvips -o $(source).ps $(source).dvi
	ps2pdf $(source).ps
embeded:
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dEmbedAllFonts=true -sOutputFile=$(source).embed.pdf -f $(source).pdf
greyscale:
	gs -sOutputFile=$(source).greyscale.pdf -dEmbedAllFonts=true -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray  -dCompatibilityLevel=1.4  -dNOPAUSE  -dBATCH $(fileName).embed.pdf
check:
	pdffonts $(source).embed.pdf
clean : 
	rm -f *.aux *.bbl *.blg $(source).dvi $(source).ps 
	rm -f *.synctex.gz
	find . -type f -name '*eps-converted-to.pdf' -delete
	rm -f *.log *.loa *.lof *.lot *.los *.glsdefs *.nom *.nlo *.toc *.idx *.ilg *.ind *.nls *.out
	#cd 1_intro && $(MAKE) clean
	#cd 2_background && $(MAKE) clean
	#cd C2_mptcp && $(MAKE) clean
	#cd C3_flipper && $(MAKE) clean
	#cd C4_aloe && $(MAKE) clean
distclean :
	make clean
	rm -f $(source).pdf

final:
	make embeded
	make greyscale
	make check
folders:
	$(MAKE) foo=1_intro single
	$(MAKE) clean
	$(MAKE) foo=2_background single 
	$(MAKE) clean
	$(MAKE) foo=C2_mptcp single
	$(MAKE) clean
	$(MAKE) foo=C3_flipper single
	$(MAKE) clean
	$(MAKE) foo=C4_aloe single
	$(MAKE) clean
single:
	source=$(basename $(file))
	$(info [source,file] is [${source},${file}])
	pdflatex -synctex=1 -interaction=nonstopmode $(source).tex || exit 0	# Faltu error in kile
	bibtex $(source)
	makeindex $(source).nlo -s nomencl.ist -o $(source).nls
	if [ -a th.aux ]; then bibtex th; fi;
	if [ -a gen.aux ]; then bibtex gen; fi;
	#bibtex gen
	#bibtex th
	pdflatex -synctex=1 -interaction=nonstopmode $(source).tex || exit 0	# Faltu error in kile
	#$(foo)