# Project-Organization
This repo provides a guide for project organization with a template for quantitative research projects. The guide is based on my personal experience working as a research assistant in economics. It aims at being a starting point for people new to quantitative research projects. It does not claim to be the only or best way to oragnize a project -- it is just one example.

## Project Structure


```
 ├── MYPROJECT
    ├── archive             # Folder for everything you will (probably) not need anymore 
    ├── code                # Folder for all code    
    ├── data
    │   ├── raw             # Folder for raw data: copy raw data into this folder
    │   └── working         # Folder for data that is generated from code (do not manually copy or edit data in this folder!)
    ├── draft               # Folder containts the draft(s)
    ├── literature          # Folder containts all literature
    ├── output
    │   ├── figures         # Folder contains all figures created as part of the project
    ├── └── tables          # Folder contains all figures created as part of the project
    └── master.do           # File runs all code in the `code` folder. The master file can be a Stata do-file, R script, Python file, or a bash script.
```

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



## Project Setup
### Create the Folder Stucture
When starting a new project, create a main project folder (`MYPROJECT`) with the following subfolder structure.
```
 ├── MYPROJECT
    ├── archive             # This folder contains everything you do not need anymore, but still wanted to keep somewhere instead of deleting 
    ├── code                # This folder contains all code    
    ├── data                # Test files (alternatively `spec` or `tests`)
    │   └── raw             # This folder contains all raw data: copy your raw data into this folder
    ├── draft               # This folder containts the draft(s)
    └── literature          # This folder containts all literature
```
### Add Data
Note that the folders `data/working` and `output` (with subfolders)  are not part of the setup. These folders will be created when working on the project.  

I provide a template in a zip format: `project_template.zip`. The zip file contains the folder structure and some example files.

### Add Code

## Working on the Project

## Replication

## Future
Talk about version control
Alternatives for master files: R, Python, bash
