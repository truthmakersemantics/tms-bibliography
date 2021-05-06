# This is not particularly sophisticated, just allows me to sync from the bib
# file in a convenient fasion.

.PHONY : all
all : sync

.PHONY : sync
sync : data/json/tms.json data/yaml/tms.yaml

data/yaml/tms.yaml : data/bib/tms.bib
	pandoc $< -s -f biblatex -t markdown -o $@

data/json/tms.json : data/bib/tms.bib
	pandoc $< -s -f biblatex -t csljson -o $@

.PHONY : clean
clean :
	rm data/json/tms.json data/yaml/tms.yaml
