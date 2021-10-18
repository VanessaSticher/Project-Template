***********
* STATA SETTINGS
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