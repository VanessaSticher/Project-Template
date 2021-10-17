# Project-Template
This repo provides a template for quantitative research projects: a folder structure with example files. It aims to serve as a starting point for projects -- a term paper, a Bachelor's or Master's thesis, or any other quantitative research project. It is not a guide on how to work with code and data -- but it can be used to start when working following a fuide. A comprehensive guide for working with code and data is, for example, Gentzkow and Shapiro's guide: [Code and Data for the Social Sciences: A Practitioner’s Guide](http://web.stanford.edu/~gentzkow/research/CodeAndData.pdf). This project template is setup to roughly follow that guide.

## Usage
Download the zip file `project_template.zip` and unzip in your main project folder. Store all your input data in `data/raw` and you code in `code`. Add folders and files according to needs. 

## Project Structure
This section outlines the basic folder structure. Folders in bold will be created during the project.

```
 ├── MYPROJECT
    ├── archive             # Folder for everything you will (probably) not need anymore 
    ├── code                # Folder for all code    
    ├── data
    │   ├── raw             # Folder for raw data: copy raw data into this folder
    │   └── _working_       # Folder for data that is generated from code (do not manually copy or edit data in this folder!)
    ├── draft               # Folder containts the draft(s)
    ├── literature          # Folder containts all literature
    ├── _output_
    │   ├── _figures_       # Folder contains all figures created as part of the project
    ├── └── _tables_        # Folder contains all figures created as part of the project
    └── master.do           # File runs all code in the `code` folder. The master file can be a Stata do-file, R script, Python file, or a bash script.
```

Depending on the scope of a project, subfolders are useful or even necessary. For example, if you have a lot of code, you might want to have subfolders in `code`, e.g. `code/cleaning` and `code/analysis`. Or if you have a project with many parts, you might want to have a subfolder for each part in the `code` folder, the data folders, and the output folders, e.g. `code/experiment_1`, `raw/experiment_1`, `working/experiment_1` etc. 

### Archive
The `archive` folder is the folder, in which you throw everything you think you will no need anymore (but you are not sure enough to delete it). An archive folder is not necessary, but in my experience useful to prevent having many old versions of code and data in the `code` and `data` folders (especially if you do not have a good system for version control).

### Code
The `code` contains all code. For large projects, subfolders can be useful. For example, a project with multiple experiments might have a subfolder for each experiment.

### Data
The `data` folder has two subfolders: `raw` and `working`, which each can have subfolders. I try to have the same subfolders in `raw` and `working` as in code. For example, the  project with multiple experiments might have the raw data of experiment 1 in a `raw/experiment1`, the cleaned data in `working/experiment1` (and the code that creates the clean data from the raw data in `code/experiment1`).

### Draft
### Literature
### Output
### master.do
The `master` file runs everything. In a first step, it deletes the folders `data/working` and `output`. In a second step, it creates these folders as empty folders and runs all code.  





## Future
Alternatives for master files: R, Python, bash
