# Project-Template
This repo provides a template for empirical research projects: a folder structure with example files. It aims to serve as a starting point for projects -- a term paper, a Bachelor's or Master's thesis, or any other empirical research project. It is not a guide on how to work with code and data -- but it can be used to start when working following a fuide. A comprehensive guide for working with code and data is, for example, Gentzkow and Shapiro's guide: [Code and Data for the Social Sciences: A Practitioner’s Guide](http://web.stanford.edu/~gentzkow/research/CodeAndData.pdf). This project template roughly follows this guide.

## Usage
Download the zip file `project_template.zip` and unzip in your main project folder. Store all your input data in `data/raw` and you code in `code`. Add folders and files according to needs. 

## Project Structure
### Overview
This is the basic folder structure:

```
 ├── MYPROJECT
    ├── archive             # Folder for everything you will (probably) not need anymore 
    ├── code                # Folder for all code    
    ├── data
    │   ├── raw             # Folder for raw data
    │   └── working         # Folder for data that is generated from code (do not manually copy or edit data in this folder!)
    ├── draft               # Folder for the draft(s)
    ├── literature          # Folder for literature
    ├── output
    │   ├── figures         # Folder for figures created during the project
    ├── └── tables          # Folder for tables created during the project
    └── master.sh           # (alternatively masterFile to run all code in the `code` folder
```
The folders `archive`, `code`, `data/raw`, `draft`, and `literature` are permanent, while the folders `data/working` and `output` (and its subfolders) will be created during the project.

Depending on the scope of a project, subfolders are useful or even necessary. For example, if you have a lot of code, you might want to have subfolders in `code`, e.g. `code/cleaning`, `code/build`, and `code/analysis`. Or if you have a project with many subprojects, you might want to have a subfolder for each subproject in the `code`, data, and `output` folders, e.g. `code/experiment_1`, `raw/experiment_1`, `working/experiment_1` etc. 

### Details
#### Archive
The `archive` folder is the folder, in which you throw everything you think you will no need anymore, but you are not sure enough to delete it. An archive folder is not necessary, but in my experience useful to prevent having many old versions of code and data in the `code` and `data` folders (especially if you do not have a good system for version control).

#### Code
The `code` contains all code. For large projects, subfolders can be useful.

#### Data
The `data` folder has two subfolders: `raw` and `working`, which each can have subfolders.

#### Draft
The `draft` folder contains the draft(s). The template includes a .tex draft.

#### Literature
The `literature` folder contains the bibliogrpahy file and it can contain PDFs relevant literature.

#### Output
The `output` folder has two subfolders: `tables` and `figures`.

#### master.sh
The `master` file runs all code. In a first step, it deletes the folders `data/working` and `output` and created these folders as empty folders. In a second step, it runs all code. The master file can be a bash script, a Stata do-file, an R script, a Python file etc.

