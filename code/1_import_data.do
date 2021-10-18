***********
* IMPORT THE DATA
*
* DATE, NAME
***********

************************************************************************************************************************
***														DATA SET 1													 ***
************************************************************************************************************************

*Import data
import delimited "$raw/auto.csv", clear	//I use the auto example dataset for demonstration purpose


***A few potentially useful examples:

/*First n rows are not part of the dataset (e.g. title or description of the data)
drop in 1/n
*/

/*Variable names are stored in the first row ->make first row to variable names
foreach var of varlist *{
	local varlabel = strtoname(substr(`var'[1], 1, 32))	//the maximum allowed variable name length is 32
	rename `var' `varlabel'
}
drop in 1
*/

/*Variables labels are stored in the first row -->make first row to variable labels
foreach var of varlist *{
	local varlabel = substr(`var'[1], 1, 80)	//the maximum allowed variable label length is 80
	label variable `var' "`varlabel'"
}
drop in 1
*/

/*Encode numeric variables (especially useful if variable names or labels were part of the dataset	
*						    and caused all variables being imported as strings)
destring, replace		//this line replaces strings with numeric types if possible
compress				//this line reduces the dataset size
*/

*Save data as .dta
save "$working/myfirstdata.dta", replace

