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

*** A few examples:
*Label a variable
label variable mpg "Mileage (mpg)"

*Encode a string variable
encode foreign, gen(foreign_enc)

*Generate a dummy variable
gen rep78_high = (rep78>3) if !missing(rep78)

*Transform a variable
gen weight_kg = weight*0.453592

*Save data as .dta
save "$working/myfirstdata_cleaned.dta", replace
