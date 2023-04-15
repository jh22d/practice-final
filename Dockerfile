FROM --platform=linux/x86_64 rocker/verse:4.2.0

RUN Rscript -e "install.packages('remotes', repos='http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('here', '1.0.1', repos = 'http://cran.us.r-project.org')"