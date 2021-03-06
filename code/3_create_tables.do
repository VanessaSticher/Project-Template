***********
* CREATE TABLES
*
* DATE, NAME
***********

************************************************************************************************************************
***													MY FIRST TABLE													 ***
************************************************************************************************************************

*Open the dataset
use "$working/myfirstdata_cleaned.dta", clear

*Create a table
estpost summarize price mpg rep78 foreign_enc, listwise
esttab using "$tables/myfirsttable.tex", replace	///
	   cells("mean sd min max") nomtitle nonumber	///
	   label

