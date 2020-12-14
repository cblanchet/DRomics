# Integration of the Mondrian R packages as a shiny app 
# Mondrian official repo : https://github.com/aursiber/Mondrian
# Release v2.1-3
FROM rocker/shiny
USER root
RUN apt-get update -qq && apt-get -y --no-install-recommends install git \
  && git clone https://github.com/cblanchet/DRomics.git shinyapp \
  && cd shinyapp/inst/DRomics-shiny/ \
  && chmod +x osinstall.sh && ./osinstall.sh \
  && Rscript rinstall.txt \
  && rm -r /srv/shiny-server/* \
  && cp -a * /srv/shiny-server/
