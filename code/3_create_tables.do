***********
* CREATE TABLES
*
* DATE, NAME
***********

************************************************************************************************************************
***														DATA SET 1													 ***
************************************************************************************************************************

*Open the dataset
use "$working/myfirstdata_cleaned.dta", clear

*Create a table
estpost summarize price mpg rep78 foreign, listwise
esttab using "$tables/myfirsttable.tex", replace	///
	   cells("mean sd min max") nomtitle nonumber

