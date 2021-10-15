***********
* CLEAN THE DATA
*
* DATE, NAME
***********

************************************************************************************************************************
***														DATA SET 1													 ***
************************************************************************************************************************

*Open the dataset
use "$working/myfirstdata.dta", clear

*Clean the dataset


*Save data as .dta
save "$working/myfirstdata_cleaned.dta", replace
