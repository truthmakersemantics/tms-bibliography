CSL_DIR     = csl
DATA_DIR    = data
IMG_DIR     = img
PDF_DIR     = pdf
PYTHON_DIR  = python
MD_DIR      = markdown

PLOT_SCRIPT = $(PYTHON_DIR)/plot.py 

CSL_FILE   = $(CSL_DIR)/tms-bibliography.csl

BIB_FILE    = $(DATA_DIR)/bib/tms.bib
YAML_FILE   = $(DATA_DIR)/yaml/tms.yaml
JSON_FILE   = $(DATA_DIR)/json/tms.json

FREQ_PLOT   = $(IMG_DIR)/tms-frequency.png

PDF_FILE    = $(PDF_DIR)/tms-bibliography.pdf

README_FILE = README.md

PRE_FILE    = $(MD_DIR)/preamble.md
AN_FILE		  = $(MD_DIR)/analysis.md
ENTRIES     = $(MD_DIR)/bibliography.md

all : sync pdf_file plots

.PHONY : sync

sync : $(YAML_FILE) $(JSON_FILE)

$(YAML_FILE) : $(BIB_FILE)
	pandoc $< -s -f biblatex -t markdown -o $@

$(JSON_FILE) : $(BIB_FILE)
	pandoc $< -s -f biblatex -t csljson -o $@

.PHONY : pdf_file

pdf_file : $(PDF_FILE) $(YAML_FILE) $(PDF_DIR) 

$(PDF_DIR) :
	@mkdir -p $(PDF_DIR)

$(PDF_FILE) : $(BIB_FILE) $(README_FILE) $(CSL_FILE) $(PRE_FILE) $(AN_FILE) $(ENTRIES)
	pandoc -s --citeproc --csl $(CSL_FILE) -o $@ $(YAML_FILE) $(PRE_FILE) $(README_FILE) $(AN_FILE) $(ENTRIES)

.PHONY : plots

plots : $(FREQ_PLOT)

$(FREQ_PLOT) : | $(JSON_FILE)
	python $(PLOT_SCRIPT)

.PHONY : clean
clean :
	rm $(YAML_FILE) $(JSON_FILE) $(PDF_FILE)

