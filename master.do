***********
* RUN EVERYTHING
*
* DATE, NAME
***********

************************************************************************************************************************
***														SETTINGS													 ***
************************************************************************************************************************

*General Stata settings
set more off

*Figure settings
set scheme s1mono		//Hint: to see available schemes tpye: graph query, scheme 

*Set paths	//Hint: define all paths relative to the project folder
global code		"code/"
global raw		"data/raw/"
global working	"data/working/"
global output	"output/"
global tables	"$output/tables/"
global figures	"$output/figures/"

*Delete existing folders that should be created by running the master do-file
shell rd "$working" /s /q
shell rd "$output" /s /q

*Set up folder structure
mkdir "$working"
mkdir "$output"
mkdir "$tables"
mkdir "$figures"


************************************************************************************************************************
***														FIRST PART													 ***
************************************************************************************************************************
*Run all do-files
do "$code/1_import_data.do"
do "$code/2_clean_data.do"
do "$code/3_create_tables.do"
do "$code/4_create_figures.do"
