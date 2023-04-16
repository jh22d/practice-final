all: results/analysis.html results/analysis.pdf

results/analysis.html results/analysis.pdf: results/analysis.Rmd results/family_bkstatus.csv results/graph.png
	Rscript -e "rmarkdown::render('results/analysis.Rmd', output_dir='results/', c('bookdown::html_document2', 'bookdown::pdf_document2'))"

results/family_bkstatus.csv: R/01_loadnclean.R
	Rscript R/01_loadnclean.R

results/graph.png: R/02_dataviz.R
	Rscript R/02_dataviz.R


.PHONY: run
run:
	pwd
	docker run --rm -it --user root -p 8787:8787 -v $$(pwd):/home/rstudio -e PASSWORD="asdf" miniatureseal/dsci-310-group-10-gcc:latest

.PHONY: run_windows
run_windows:
	pwd
	docker run --rm -it --user root -p 8787:8787 -v /$$(pwd)://home//rstudio -e PASSWORD="asdf" miniatureseal/dsci-310-group-10-gcc:latest

.PHONY: clean
clean:
	find results/ -type f ! -name '.gitkeep' ! -name 'analysis.Rmd' ! -name 'bibliography.bib' -delete