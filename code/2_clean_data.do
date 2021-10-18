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
label variable price "Price"
label variable rep78 "Repair Record in 1978"

*Encode a string variable
encode foreign, gen(foreign_enc)
label variable foreign_enc "Foreign"

*Generate a dummy variable
gen rep78_high = (rep78>3) if !missing(rep78)
label variable rep78_high "High Repair Record in 1978"

*Transform a variable
gen weight_kg = weight*0.453592
label variable weight_kg "Weight (kg)"

*Save data as .dta
save "$working/myfirstdata_cleaned.dta", replace
