***********
* CREATE FIGURES
*
* DATE, NAME
***********

************************************************************************************************************************
***														DATA SET 1													 ***
************************************************************************************************************************

*Open the dataset
use "$working/myfirstdata_cleaned.dta", clear

*Create a table
hist price
graph export "$figures/myfirstfigure.png", as(png) replace


