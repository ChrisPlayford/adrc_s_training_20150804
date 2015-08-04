* 4th August 2015

* USING GITHUB WITH STATA - DEMONSTRATION
* Dr Chris Playford

/*
This file is based on a modified and simplified version of:
stata_fast_track_2015_v6.do

This file was used as part of 

********************************************************************************

© Vernon Gayle, University of Edinburgh.

This file has been produced for AQMeN and the ADRC-S by 
Professor Vernon Gayle with assistance from Dr Roxanne
Connelly and Dr Chris Playford.

Any material in this file must not be reproduced, 
published or used for teaching without permission from Professor Vernon Gayle. 

Many of the ideas and examples presented in this document draw heavily on
previous work (see especially www.longitudinal.stir.ac.uk). 
We are grateful for the comments and feedback from participants of 
earlier workshops. 

Over the last decade much of this material has been developed in close 
collaboration with Professor Paul Lambert, Stirling University. 
However, Professor Gayle is responsible for any errors in this file.

Professor Vernon Gayle (vernon.gayle@ed.ac.uk) 


********************************************************************************
*/

* use the file provided

use "A:\ADRC_S\Training\2015 05 Stata Training\adrc_s_training_data4.dta", clear

* examining the data *

* take a look at the variables in the dataset *

codebook, compact

* Save a copy of the data

save "A:\ADRC_S\Training\GitHub\adrc_s_training_20150804\adrc_s_training_data4.dta", replace
clear

***

* Analysis of working hours and age

use "A:\ADRC_S\Training\2015 05 Stata Training\adrc_s_training_data4.dta", clear

* a simple correlation *

tab workhours

tab age 

* plotting the relationship *

graph twoway (scatter workhours age, jitter(8) msymbol(triangle))  

* Pearson's r *

cor workhours age

clear

* EOF
