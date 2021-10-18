#!/bin/bash

# Delete folders: data/working and output
rm -r data/working
rm -r data/output

# Create empty folders: data/working and output
mkdir data/working
mkdir data/output
mkdir data/output/tables
mkdir data/output/figures

# Run code
stata-mp -e do "code/0_settings.do"
stata-mp -e do "code/1_import_data.do"
stata-mp -e do "code/2_clean_data.do"
stata-mp -e do "code/3_create_tables.do"
stata-mp -e do "code/4_create_figures.do"

# For R: Rscript path_to_file/filename.R
# For python: python path_to_file/filename.py


