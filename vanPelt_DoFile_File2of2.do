****************************************************************************************
*								Misc                            					   *
*																					   *
****************************************************************************************

ssc install geo2xy, replace     
ssc install palettes, replace        
ssc install colrspace, replace
ssc install schemepack, replace
set scheme white_tableau
ssc install ineqdeco, replace
ssc install spmap, replace
ssc install shp2dta, replace
ssc install mif2dta, replace
ssc install glcurve, replace
ssc install heatplot, replace

****************************************************************************************
*								Set working directory                                  *
*																					   *
****************************************************************************************

cd "C:\Stata\ThesisDatabase"


****************************************************************************************
*								.xlsx to .dat                               		   *
*																					   *
****************************************************************************************
// 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
// Marokko	1 "expat" 2 "refugee" 3 "migrant"
//	Religion 1 Muslim 2 Christian
// Income 1 low-middle 2 upper-middle 3 high
// Developing 1 
clear
import excel "BaseData\Marokko_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 1
generate Region = .
replace Region = 2
save "Dat_Files\Marokko_E.dta", replace
clear
import excel "BaseData\Marokko_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 1
generate Region = .
replace Region = 2
save "Dat_Files\Marokko_M.dta", replace
clear
import excel "BaseData\Marokko_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 1
generate Region = .
replace Region = 2
save "Dat_Files\Marokko_V.dta", replace
clear
import excel "BaseData\Marokko_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 1
generate Region = .
replace Region = 2
save "Dat_Files\Marokko_A.dta", replace
// Ukraine	1 "expat" 2 "refugee" 3 "migrant"
clear
import excel "BaseData\Ukraine_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 2
generate Region = .
replace Region = 1
save "Dat_Files\Ukraine_V.dta", replace
clear
import excel "BaseData\Ukraine_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 2
generate Region = .
replace Region = 1
save "Dat_Files\Ukraine_M.dta", replace
clear
import excel "BaseData\Ukraine_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 2
generate Region = .
replace Region = 1
save "Dat_Files\Ukraine_E.dta", replace
clear
import excel "BaseData\Ukraine_A1.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 2
generate Region = .
replace Region = 1
save "Dat_Files\Ukraine_A1.dta", replace
clear
import excel "BaseData\Ukraine_A2.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 2
generate Region = .
replace Region = 1
save "Dat_Files\Ukraine_A2.dta", replace

// Turkije	1 "expat" 2 "refugee" 3 "migrant"
clear
import excel "BaseData\Turkije_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 3
generate Region = .
replace Region = 3
save "Dat_Files\Turkije_V.dta", replace
clear
import excel "BaseData\Turkije_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 3
generate Region = .
replace Region = 3
save "Dat_Files\Turkije_M.dta", replace
clear
import excel "BaseData\Turkije_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 3
generate Region = .
replace Region = 3
save "Dat_Files\Turkije_E.dta", replace
clear
import excel "BaseData\Turkije_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 3
generate Region = .
replace Region = 3
save "Dat_Files\Turkije_A.dta", replace
// Syrie	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Syrie_A_AD.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_A_AD.dta", replace
clear
import excel "BaseData\Syrie_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_E.dta", replace
clear
import excel "BaseData\Syrie_A_NRC.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_A_NRC.dta", replace
clear
import excel "BaseData\Syrie_A_Tel.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_A_Tel.dta", replace
clear
import excel "BaseData\Syrie_A_Trouw.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_A_Trouw.dta", replace
clear
import excel "BaseData\Syrie_A_Volk.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_A_Volk.dta", replace

clear
import excel "BaseData\Syrie_V_AD.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_V_AD.dta", replace
clear
import excel "BaseData\Syrie_A_NRC.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_V_NRC.dta", replace
clear
import excel "BaseData\Syrie_V_Telegraaf.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_V_Tel.dta", replace
clear
import excel "BaseData\Syrie_V_Trouw.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_V_Trouw.dta", replace
clear
import excel "BaseData\Syrie_V_Volk.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_V_Volk.dta", replace

clear
import excel "BaseData\Syrie_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 4
generate Region = .
replace Region = 3
save "Dat_Files\Syrie_M.dta", replace

// Sudan	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Sudan_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_A.dta", replace

clear
import excel "BaseData\Sudan_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_E.dta", replace

clear
import excel "BaseData\Sudan_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_V.dta", replace

clear
import excel "BaseData\Sudan_M_AD.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_M_AD.dta", replace
clear
import excel "BaseData\Sudan_M_NRC.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_M_NRC.dta", replace
clear
import excel "BaseData\Sudan_M_Telegraaf.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_M_Telegraaf.dta", replace
clear
import excel "BaseData\Sudan_M_Trouw.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_M_Trouw.dta", replace
clear
import excel "BaseData\Sudan_M_Volkskrant.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 5
generate Region = .
replace Region = 2
save "Dat_Files\Sudan_M_Volkskrant.dta", replace

// Afghanistan	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Afghanistan_A_AD_Tel.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_A_AD_Tel.dta", replace
clear
import excel "BaseData\Afghanistan_A_NRC.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_A_NRC.dta", replace
clear
import excel "BaseData\Afghanistan_A_Trouw.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_A_Trouw.dta", replace
clear
import excel "BaseData\Afghanistan_A_Volk.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_A_Volk.dta", replace
clear
import excel "BaseData\Afghanistan_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_E.dta", replace
clear
import excel "BaseData\Afghanistan_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_M.dta", replace
clear
import excel "BaseData\Afghanistan_V1.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_V1.dta", replace
clear
import excel "BaseData\Afghanistan_V2.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 6
generate Region = .
replace Region = 3
save "Dat_Files\Afghanistan_V2.dta", replace

// Irak	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Irak_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 7
generate Region = .
replace Region = 3
save "Dat_Files\Irak_E.dta", replace
clear
import excel "BaseData\Irak_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 7
generate Region = .
replace Region = 3
save "Dat_Files\Irak_V.dta", replace
clear
import excel "BaseData\Irak_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 7
generate Region = .
replace Region = 3
save "Dat_Files\Irak_M.dta", replace
clear
import excel "BaseData\Irak_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 7
generate Region = .
replace Region = 3
save "Dat_Files\Irak_A.dta", replace

// Jemen	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Jemen_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 8
generate Region = .
replace Region = 3
save "Dat_Files\Jemen_E.dta", replace
clear
import excel "BaseData\Jemen_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 8
generate Region = .
replace Region = 3
save "Dat_Files\Jemen_V.dta", replace
clear
import excel "BaseData\Jemen_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 8
generate Region = .
replace Region = 3
save "Dat_Files\Jemen_M.dta", replace
clear
import excel "BaseData\Jemen_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 8
generate Region = .
replace Region = 3
save "Dat_Files\Jemen_A.dta", replace

// Eritrea	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Eritrea_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 10
generate Region = .
replace Region = 2
save "Dat_Files\Eritrea_E.dta", replace
clear
import excel "BaseData\Eritrea_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 10
generate Region = .
replace Region = 2
save "Dat_Files\Eritrea_V.dta", replace
clear
import excel "BaseData\Eritrea_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 10
generate Region = .
replace Region = 2
save "Dat_Files\Eritrea_M.dta", replace
clear
import excel "BaseData\Eritrea_A1.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 10
generate Region = .
replace Region = 2
save "Dat_Files\Eritrea_A1.dta", replace
clear
import excel "BaseData\Eritrea_A2.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 10
generate Region = .
replace Region = 2
save "Dat_Files\Eritrea_A2.dta", replace

// Libanon	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Libanon_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 9
generate Region = .
replace Region = 3
save "Dat_Files\Libanon_E.dta", replace
clear
import excel "BaseData\Libanon_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 9
generate Region = .
replace Region = 3
save "Dat_Files\Libanon_V.dta", replace
clear
import excel "BaseData\Libanon_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 9
generate Region = .
replace Region = 3
save "Dat_Files\Libanon_M.dta", replace
clear
import excel "BaseData\Libanon_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 9
generate Region = .
replace Region = 3
save "Dat_Files\Libanon_A.dta", replace

// Libie	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Libie_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 11
generate Region = .
replace Region = 2
save "Dat_Files\Libie_E.dta", replace
clear
import excel "BaseData\Libie_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 11
generate Region = .
replace Region = 2
save "Dat_Files\Libie_V.dta", replace
clear
import excel "BaseData\Libie_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 11
generate Region = .
replace Region = 2
save "Dat_Files\Libie_M.dta", replace
clear
import excel "BaseData\Libie_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 11
generate Region = .
replace Region = 2
save "Dat_Files\Libie_A.dta", replace

// Pakistan	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Pakistan_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 12
generate Region = .
replace Region = 3
save "Dat_Files\Pakistan_E.dta", replace
clear
import excel "BaseData\Pakistan_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 12
generate Region = .
replace Region = 3
save "Dat_Files\Pakistan_V.dta", replace
clear
import excel "BaseData\Pakistan_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 12
generate Region = .
replace Region = 3
save "Dat_Files\Pakistan_M.dta", replace
clear
import excel "BaseData\Pakistan_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 12
generate Region = .
replace Region = 3
save "Dat_Files\Pakistan_A.dta", replace

// Somalia	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
clear
import excel "BaseData\Somalie_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 13
generate Region = .
replace Region = 2
save "Dat_Files\Somalie_E.dta", replace
clear
import excel "BaseData\Somalie_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 13
generate Region = .
replace Region = 2
save "Dat_Files\Somalie_V.dta", replace
clear
import excel "BaseData\Somalie_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 13
generate Region = .
replace Region = 2
save "Dat_Files\Somalie_M.dta", replace
clear
import excel "BaseData\Somalie_A1.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 13
generate Region = .
replace Region = 2
save "Dat_Files\Somalie_A1.dta", replace
clear
import excel "BaseData\Somalie_A2.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 13
generate Region = .
replace Region = 2
save "Dat_Files\Somalie_A2.dta", replace

// Centraal Afrikaanse Republiek	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker" 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
clear
import excel "BaseData\CAR_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 14
generate Region = .
replace Region = 2
save "Dat_Files\CAR_E.dta", replace
clear
import excel "BaseData\CAR_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 14
generate Region = .
replace Region = 2
save "Dat_Files\CAR_V.dta", replace
clear
import excel "BaseData\CAR_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 14
generate Region = .
replace Region = 2
save "Dat_Files\CAR_M.dta", replace
clear
import excel "BaseData\CAR_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 14
generate Region = .
replace Region = 2
save "Dat_Files\CAR_A.dta", replace

// Congo	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker" 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
clear
import excel "BaseData\Congo_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 15
generate Region = .
replace Region = 2
save "Dat_Files\Congo_E.dta", replace
clear
import excel "BaseData\Congo_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 15
generate Region = .
replace Region = 2
save "Dat_Files\Congo_V.dta", replace
clear
import excel "BaseData\Congo_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 15
generate Region = .
replace Region = 2
save "Dat_Files\Congo_M.dta", replace
clear
import excel "BaseData\Congo_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 15
generate Region = .
replace Region = 2
save "Dat_Files\Congo_A.dta", replace

// myanmar	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker" 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
clear
import excel "BaseData\Myanmar_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 16
generate Region = .
replace Region = 3
save "Dat_Files\Myanmar_E.dta", replace
clear
import excel "BaseData\Myanmar_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 16
generate Region = .
replace Region = 3
save "Dat_Files\Myanmar_V.dta", replace
clear
import excel "BaseData\Myanmar_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 16
generate Region = .
replace Region = 3
save "Dat_Files\Myanmar_M.dta", replace
clear
import excel "BaseData\Myanmar_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 16
generate Region = .
replace Region = 3
save "Dat_Files\Myanmar_A.dta", replace

// Venezuela	1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker" 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
clear
import excel "BaseData\Venezuela_E.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 1
generate Country = .
replace Country = 17
generate Region = .
replace Region = 5
save "Dat_Files\Venezuela_E.dta", replace
clear
import excel "BaseData\Venezuela_V.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 2
generate Country = .
replace Country = 17
generate Region = .
replace Region = 5
save "Dat_Files\Venezuela_V.dta", replace
clear
import excel "BaseData\Venezuela_M.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 3
generate Country = .
replace Country = 17
generate Region = .
replace Region = 5
save "Dat_Files\Venezuela_M.dta", replace
clear
import excel "BaseData\Venezuela_A.xlsx", sheet("News") firstrow
generate Keyword = .
replace Keyword = 4
generate Country = .
replace Country = 17
generate Region = .
replace Region = 5
save "Dat_Files\Venezuela_A.dta", replace


**************
*  Open log  *
**************

log close _all
log using "Logs\Assignment.log", replace


**********************************************************
*			1. Data preparation                          *
*                                                        *
*                                                        *
* Note: Upload the datafiles to input in the created map *
**********************************************************

// Upload and merge the datafiles

use "Dat_Files\Marokko_E.dta"
append using "Dat_Files\Marokko_M.dta"
append using "Dat_Files\Marokko_V.dta"
append using "Dat_Files\Marokko_A.dta"
append using "Dat_Files\Marokko_E.dta"
append using "Dat_Files\Ukraine_V.dta"
append using "Dat_Files\Ukraine_M.dta"
append using "Dat_Files\Ukraine_E.dta"
append using "Dat_Files\Ukraine_A1.dta"
append using "Dat_Files\Ukraine_A2.dta"
append using "Dat_Files\Turkije_E.dta"
append using "Dat_Files\Turkije_M.dta"
append using "Dat_Files\Turkije_V.dta"
append using "Dat_Files\Turkije_A.dta"
append using "Dat_Files\Syrie_A_AD.dta"
append using "Dat_Files\Syrie_A_NRC.dta"
append using "Dat_Files\Syrie_A_Tel.dta"
append using "Dat_Files\Syrie_A_Trouw.dta"
append using "Dat_Files\Syrie_A_Volk.dta"
append using "Dat_Files\Syrie_V_AD.dta"
append using "Dat_Files\Syrie_V_NRC.dta"
append using "Dat_Files\Syrie_V_Tel.dta"
append using "Dat_Files\Syrie_V_Trouw.dta"
append using "Dat_Files\Syrie_V_Volk.dta"
append using "Dat_Files\Syrie_M.dta"
append using "Dat_Files\Syrie_E.dta"
append using "Dat_Files\Sudan_A.dta"
append using "Dat_Files\Sudan_V.dta"
append using "Dat_Files\Sudan_E.dta"
append using "Dat_Files\Sudan_M_AD.dta"
append using "Dat_Files\Sudan_M_Telegraaf.dta"
append using "Dat_Files\Sudan_M_NRC.dta"
append using "Dat_Files\Sudan_M_Volkskrant.dta"
append using "Dat_Files\Sudan_M_Trouw.dta"
append using "Dat_Files\Afghanistan_A_AD_Tel.dta"
append using "Dat_Files\Afghanistan_A_NRC"
append using "Dat_Files\Afghanistan_A_Trouw"
append using "Dat_Files\Afghanistan_A_Volk"
append using "Dat_Files\Afghanistan_E"
append using "Dat_Files\Afghanistan_M"
append using "Dat_Files\Afghanistan_V1"
append using "Dat_Files\Afghanistan_V2"
append using "Dat_Files\Irak_V.dta"
append using "Dat_Files\Irak_M.dta"
append using "Dat_Files\Irak_E.dta"
append using "Dat_Files\Irak_A.dta"
append using "Dat_Files\Libanon_V.dta"
append using "Dat_Files\Libanon_M.dta"
append using "Dat_Files\Libanon_E.dta"
append using "Dat_Files\Libanon_A.dta"
append using "Dat_Files\Jemen_V.dta"
append using "Dat_Files\Jemen_M.dta"
append using "Dat_Files\Jemen_E.dta"
append using "Dat_Files\Jemen_A.dta"
append using "Dat_Files\Eritrea_A1.dta"
append using "Dat_Files\Eritrea_A2.dta"
append using "Dat_Files\Eritrea_E.dta"
append using "Dat_Files\Eritrea_V.dta"
append using "Dat_Files\Eritrea_M.dta"
append using "Dat_Files\Somalie_A1.dta"
append using "Dat_Files\Somalie_A2.dta"
append using "Dat_Files\Somalie_E.dta"
append using "Dat_Files\Somalie_V.dta"
append using "Dat_Files\Somalie_M.dta"
append using "Dat_Files\Pakistan_V.dta"
append using "Dat_Files\Pakistan_M.dta"
append using "Dat_Files\Pakistan_E.dta"
append using "Dat_Files\Pakistan_A.dta"
append using "Dat_Files\Libie_V.dta"
append using "Dat_Files\Libie_M.dta"
append using "Dat_Files\Libie_E.dta"
append using "Dat_Files\Libie_A.dta"
append using "Dat_Files\CAR_V.dta"
append using "Dat_Files\CAR_M.dta"
append using "Dat_Files\CAR_E.dta"
append using "Dat_Files\CAR_A.dta"
append using "Dat_Files\Venezuela_V.dta"
append using "Dat_Files\Venezuela_M.dta"
append using "Dat_Files\Venezuela_E.dta"
append using "Dat_Files\Venezuela_A.dta"
append using "Dat_Files\Congo_V.dta"
append using "Dat_Files\Congo_M.dta"
append using "Dat_Files\Congo_E.dta"
append using "Dat_Files\Congo_A.dta"
append using "Dat_Files\Myanmar_V.dta"
append using "Dat_Files\Myanmar_M.dta"
append using "Dat_Files\Myanmar_E.dta"
append using "Dat_Files\Myanmar_A.dta"

save "Output\MergedData.dta", replace

// Positive and Negative Tone  Minqing Hu and Bing Liu. "Mining and Summarizing Customer Reviews." 
//       Proceedings of the ACM SIGKDD International Conference on Knowledge 
//       Discovery and Data Mining (KDD-2004), Aug 22-25, 2004, Seattle, 
//      Washington, USA, 
//////// https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html#datasets

clear
import excel "Feeling\Positive.xlsx"
duplicates report A, list
duplicates drop A, force
save "Feeling\Positive.dta", replace
clear
import excel "Feeling\Negative.xlsx"
duplicates report A, list
duplicates drop A, force
save "Feeling\Negative.dta", replace

// Change Labels for clarity
use "Output\MergedData.dta", clear

drop Summary // only contained empty cells

label define keyword_labels 1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
label values Keyword keyword_labels
label variable Keyword "Keyword used as indicator"

label define country_labels 1 "Morocco" 2 "Ukraine" 3 "Türkiye" 4 "Syria" 5 "Sudan" 6 "Afghanistan" 7 "Iraq" 8 "Yemen" 9 "Lebanon" 10 "Eritrea" 11 "Libia" 12 "Pakistan" 13 "Somalia" 14 "CAR" 15 "Congo" 16 "Myanmar" 17 "Venezuela"
label values Country country_labels
label variable Country "Country discussed in Article"

gen CountryCode = Country
label define country_codes 1 "Mor" 2 "Ukr" 3 "Tur" 4 "Syr" 5 "Sud" 6 "Afg" 7 "Ira" 8 "Yem" 9 "Leb" 10 "Eri" 11 "Lib" 12 "Pak" 13 "Som"
label values CountryCode country_codes
label variable CountryCode "Country Codes discussed in Article"

label define region_labels 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
label values Region region_labels
label variable Region "Continent Located"

generate Newspaper = 6
replace Newspaper = 2 if strpos(Publication, "Volkskrant") > 0
replace Newspaper = 1 if strpos(Publication, "Trouw") > 0
replace Newspaper = 4 if strpos(Publication, "Algemeen Dagblad") > 0
replace Newspaper = 3 if strpos(Publication, "NRC") > 0
replace Newspaper = 5 if strpos(Publication, "Telegraaf") > 0
replace Newspaper = 6 if strpos(Publication, "Parool") > 0
label define Krant_labels 1 "Volkskrant" 2 "Trouw" 3"AD" 4 "NRC" 5 "Telegraaf" 6 "Het Parool" , replace
label values Newspaper Krant_labels
label variable Newspaper "Newspaper that made the article"

save "Output\MergedData.dta", replace

// Checking for positive tone //
* Load the ThesisDoFile
use "Output\MergedData.dta", clear

* Create a new variable for the flag
gen PositiveFlag = 0
gen PositiveCount = 0
save "Output\MergedData.dta", replace

* Load the file with the positive words into memory
use "Feeling\Positive.dta", clear
rename A words

* Get all unique words and store them in a local macro
levelsof words, local(positive_words)

* Reload the ThesisDoFile
use "Output\MergedData.dta", clear

* Loop over all words in the positive words dataset
foreach word of local positive_words {
    * Check if the word is in the headline
    replace PositiveFlag = 1 if strpos(upper(Headline), upper("`word'")) > 0
}

* Loop over all words in the negative words dataset for count
foreach word of local positive_words {
    * Increase NegativeCount by 1 for each occurrence of the word in the headline
    replace PositiveCount = PositiveCount + 1 if strpos(upper(Headline), upper("`word'")) > 0
}

save "Output\MergedData.dta", replace

// Checking for negative tone //
* Load the ThesisDoFile
use "Output\MergedData.dta", clear

* Create a new variable for the flag
gen NegativeFlag = 0
gen NegativeCount = 0
save "Output\MergedData.dta", replace

* Load the file with the positive words into memory
use "Feeling\Negative.dta", clear
rename A words

* Get all unique words and store them in a local macro
levelsof words, local(negative_words)

* Reload the ThesisDoFile
use "Output\MergedData.dta", clear

* Loop over all words in the negative words dataset for presence
foreach word of local negative_words {
    * Check if the word is in the headline
    replace NegativeFlag = 1 if strpos(upper(Headline), upper("`word'")) > 0
}

* Loop over all words in the negative words dataset for count
foreach word of local negative_words {
    * Increase NegativeCount by 1 for each occurrence of the word in the headline
    replace NegativeCount = NegativeCount - 1 if strpos(upper(Headline), upper("`word'")) > 0
}


// Add Neutral
gen AverageToneCount = 0
replace AverageToneCount = AverageToneCount + PositiveCount
replace AverageToneCount = AverageToneCount + NegativeCount

gen AverageTone = 0
gen NegativeCountRev = -NegativeCount
replace AverageTone = -1 if NegativeCountRev > PositiveCount
replace AverageTone = 1 if PositiveCount > NegativeCountRev


// Add a year variable
generate year = year(Date)
label variable year "Year of publication"

save "Output\MergedData.dta", replace

// Toevoegen van hoeveelheden en percentages
gen Amount = .
gen Percentage = .
replace Amount = 999 if Country == 1 // Marokko
replace Percentage = 0 if Country == 1
replace Amount = 1143 if Country == 2 // Ukraine
replace Percentage = 0.02 if Country == 2
replace Amount = 4040 if Country == 3 // Turkije
replace Percentage = 0.08 if Country == 3
replace Amount = 19262 if Country == 4 // Syrie
replace Percentage = 0.4 if Country == 4
replace Amount = 999 if Country == 5 // Sudan
replace Percentage = 0.01 if Country == 5
replace Amount = 2400 if Country == 6 // Afghanistan
replace Percentage = 0.05 if Country == 6
replace Amount =  1198 if Country == 7 // Irak
replace Percentage = 0.03 if Country == 7
replace Amount = 2762 if Country == 8 // Yemen
replace Percentage = 0.06 if Country == 8
replace Amount = 999 if Country == 9 // Libanon
replace Percentage = 0 if Country == 9
replace Amount = 2079 if Country == 10 // Eritrea
replace Percentage = 0.04 if Country == 10
replace Amount = 999 if Country == 11 // Libia
replace Percentage = 0 if Country == 11
replace Amount = 999 if Country == 12 // Pakistan
replace Percentage = 0 if Country == 12
replace Amount = 999 if Country == 13 // Somalia
replace Percentage = 0 if Country == 13
replace Amount = 999 if Country == 14 // CAR
replace Percentage = 0 if Country == 14
replace Amount = 999 if Country == 15 // Congo
replace Percentage = 0 if Country == 15
replace Amount = 999 if Country == 16 // Myanmar
replace Percentage = 0 if Country == 16
replace Amount = 999 if Country == 17 // Venezuela
replace Percentage = 0 if Country == 17

label define amount_label 999 "<1000"
label values Amount amount_label
label variable Amount "Number of Articles"
label define percentage_label 0 "<0.01"
label values Percentage percentage_label
label variable Percentage "Percentage of Total Amount of Articles"

/// Source https://www.pewresearch.org/religion/2012/12/18/global-religious-landscape-exec/
generate Religion = .
replace Religion = 1 if Country == 1 | Country == 3 | Country == 4 | Country == 5 | Country == 6 | Country == 7 | Country == 8 | Country == 9 | Country == 11 | Country == 12 | Country == 13
replace Religion = 2 if Country == 2 | Country == 10 | Country == 14 | Country == 15 | Country == 17
replace Religion = 3 if Country == 16
label define Religion_Var 1 "muslim" 2 "christian" 3 "buddhist"
label values Religion Religion_Var
label variable Religion "Dominant Religion of the Country"

/// Government form https://www.cs.mcgill.ca/~rwest/wikispeedia/wpcd/wp/l/List_of_countries_by_system_of_government.htm
generate Government = .
replace Government = 1 if Country == 2 | Country == 3 | Country == 5 | Country == 6 | Country == 7 | Country == 8 | Country == 12 | Country == 14 | Country == 15 | Country == 17
replace Government = 2 if Country == 1
replace Government = 4 if Country == 4 | Country == 10
replace Government = 5 if Country == 16 | Country == 12 | Country == 11 | Country == 5
replace Government = 6 if Country == 13
replace Government = 7 if Country == 12 | Country == 17

label define Government_Var 1 "Presidential / Separated republics" 2 "Consitutional Monarchy" 3 "Theocracy" 4 "One-party States" 5 "Military Junta" 6 "Transitional" 7 "Internal Governance"	
label values Government Government_Var	
label variable Government "Type of Government Ruling the Country"


// 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"

generate Region2 = 3
replace Region2 = 1 if Region == 1
replace Region2 = 2 if Region == 2
replace Region2 = 4	if Country == 16
replace Region2 = 5 if Region == 4
replace Region2 = 6 if Region == 5

label define Region2var 1 "Europe" 2 "Africa" 3 "Middle-East" 4 "Asia" 5 "N. America" 6 "S. America"
label values Region2 Region2var
label variable Region2 "Region including Middle-East"

*******************************************
*			1.1 Data cleaning			  *
*******************************************
sort Headline Newspaper Keyword Country
quietly by Headline Newspaper Keyword Country:  gen dup = cond(_N==1,0,_n)
drop if dup > 1
drop dup
drop if Newspaper == 6


*******************************************
*			2 Data Analysis			      *
*******************************************
set scheme tab3, permanently

tabulate AverageTone, gen(ToneFreq)
rename ToneFreq1 Negative_Tone, replace
rename ToneFreq2 Neutral_Tone, replace
rename ToneFreq3 Positive_Tone, replace
tabulate Keyword, gen(freq)
rename freq1 expat, replace
rename freq2 refugee, replace
rename freq3 migrant, replace
rename freq4 asylumseeker, replace

// Descriptive
graph bar (mean) Keyword, over(Newspaper)
graph bar Amount, over(Country, label(angle(45))) bar(1, fcolor(0 150 125)) blabel(total, size(vsmall))


graph hbar (mean) Amount, over(Country, label(angle(0) labsize(vlarge))) bar(1, fcolor(0 150 125)) blabel(bar, size(vsmall))
graph export "graphs\Amount.png", as(png) replace 
graph bar Percentage, over(Country, label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall))
graph export "graphs\Percentage.png", as(png) replace 
graph bar (count), over(Country, label(angle(45))) bar(1, fcolor(0 150 125)) blabel(total, size(vsmall))
graph export "graphs\AmountNews.png", as(png) replace

// 					Discourse Analysis of Keywords
// Hoeveelheid postivief/negatief/neutraal
// graph bar (sum) NegativeFlag PositiveFlag if Neutral != 1, over(Region) 
// graph bar (mean) NegativeFlag PositiveFlag if Neutral != 1, over(Keyword) scheme(white_viridis)
// graph bar (mean) NegativeFlag PositiveFlag if Neutral != 1, over(Region)

// Hoeveelheid per keyword (expat etc)
gen Negative_Tone = -AverageTone
graph bar (mean) AverageTone, over(Keyword, sort(1) descending) ytitle(The negative connotation (-1;1 scale, -1 means all connotation words are negative)) bar(1, fcolor(0 150 125)) blabel(total, size(vsmall))
graph export "graphs\AverageToneKeyword.png", as(png) replace

twoway (bar (count) if AverageTone == -1, over(AverageTone) fcolor(red)) ///
       (bar (count) if AverageTone == 0, over(AverageTone) fcolor(maroon)) ///
	   (bar (count) if AverageTone == 1, over(AverageTone) fcolor(green)) ///
	   ytitle(The negative connotation (-1;1 scale, -1 means all connotation words are negative)) bar(1, fcolor(0 150 125)) blabel(total, size(vsmall))

graph bar (mean) AverageTone PositiveCount NegativeCount, over(Keyword, sort(1) descending) ytitle("The negative connotation (-1;1 scale, -1/1 means all connotation words are negative/positive)", size(vsmall)) bar(1, fcolor(red)) bar(2, fcolor(0 150 125)) bar(3, fcolor(gray)) blabel(total, size(vsmall)) legend( order(1 "Percentage Average" 2 "Sum Positive" 3 "Sum Negative"))
graph export "graphs\Flagpercentage.png", as(png) replace

// Gemiddelde toon per land
graph bar (mean) Negative_Tone, over(Keyword) by(Region2) ytitle(The negative connotation (-1;1 scale, 1 is most negative))
line (mean) Negative_Tone, by(Region)
twoway ///
bar Negative_Tone Region, ytitle(The negative connotation (-1;1 scale, 1 is most negative)) ///
|| ///
line Negative_Tone Region
	

// Appendix Discourse Per Land
graph bar (mean) AverageTone if Region == 1, over(Keyword) stack title("Europe")
graph save "graphs\ATone1", replace
graph bar (mean) AverageTone if Region == 2, over(Keyword) stack title("Africa")
graph save "graphs\ATone2", replace
graph bar (mean) AverageTone if Region == 3, over(Keyword) stack title("Asia")
graph save "graphs\ATone3", replace




twoway (bar year_mean NegativeFlag PositiveFlag if Neutral != 1, over(Keyword)) ///
(rline mean_NegativeFlag Keyword if Neutral != 1, lcolor(blue) lpattern(dash)) ///
(rline mean_PositiveFlag Keyword if Neutral != 1, lcolor(red) lpattern(dash)), scheme(tab3)


// 					Sentiment Analysis and Media Bias
// Add SD, Mean, NR
egen avg_sentiment = mean(Negative_Tone), by(Country)
egen sdwrite = sd(Negative_Tone), by(Country)
egen n = count(Negative_Tone), by(Country)

generate hisentiment = Negative_Tone + invttail(n-1,0.025)*(sdwrite / sqrt(n))
generate lowsentiment = Negative_Tone - invttail(n-1,0.025)*(sdwrite / sqrt(n))

//								By country
graph hbar avg_sentiment, over(CountryCode, sort(1) descending) scheme(white_cividis) ytitle(The negative connotation (-1;1 scale, 1 is most negative))

//					Geographical Bias in Media Representation
twoway (bar avg_sentiment Region if Region == 1) ///
       (bar avg_sentiment Region if Region == 2) ///
       (bar avg_sentiment Region if Region == 3), ///
	   xlabel( 1 "Europe" 2 "Africa" 3 "Asia", noticks) ///
	   xtitle("Continent of Origin") ytitle("Average Sentiment") ///
	   ytitle(The negative connotation (-1;1 scale, 1 is most negative)) ///
	   legend( order(1 "Europe" 2 "Africa" 3 "Asia") ) ytick(0(0.05)0.5)
	   

graph bar Amount, over(Religion) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall))
graph export "graphs\ReligionFreq.png", as(png) replace 

graph bar AverageTone, over(Religion) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall)) ytitle("Connotation Score (-1 Negative ; +1 Positive)")
graph export "graphs\ReligionTone.png", as(png) replace 

graph bar (count), over(Government, label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall))
graph export "graphs\GovernementFreq.png", as(png) replace 

graph bar AverageTone, over(Government, sort(1) descending label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall)) ytitle("Connotation Score (-1 Negative ; +1 Positive)")
graph export "graphs\GovernmentTone.png", as(png) replace 

gen Relgov = .
replace Relgov = 1 if Religion == 1 & Government == 1 // Muslim + Presidential / Separated republics"
replace Relgov = 2 if Religion == 1 & Government == 2 // Muslim 
replace Relgov = 3 if Religion == 1 & Government == 4
replace Relgov = 4 if Religion == 1 & Government == 5
replace Relgov = 5 if Religion == 1 & Government == 6
replace Relgov = 6 if Religion == 1 & Government == 7

replace Relgov = 7 if Religion == 2 & Government == 1
replace Relgov = 8 if Religion == 2 & Government == 2
replace Relgov = 9 if Religion == 2 & Government == 4
replace Relgov = 10 if Religion == 2 & Government == 5
replace Relgov = 11 if Religion == 2 & Government == 6
replace Relgov = 12 if Religion == 2 & Government == 7

replace Relgov = 13 if Religion == 3 & Government == 1
replace Relgov = 14 if Religion == 3 & Government == 2
replace Relgov = 15 if Religion == 3 & Government == 4
replace Relgov = 16 if Religion == 3 & Government == 5
replace Relgov = 17 if Religion == 3 & Government == 6
replace Relgov = 18 if Religion == 3 & Government == 7

label define Relgov_Var 1 "Muslim + Presidential" 2 "Muslim + Monarchy" 3 "Muslim + One-party" 4 "Muslim + Military Junta" 5 "Muslim + Transitional" 6 "Muslim + Internal Governance" 7 "Christian + Presidential" 8 "Christian + Monarchy" 9 "Christian + One-party" 10 "Christian + Military Junta" 11 "Christian + Transitional" 12 "Christian + Internal Governance" 13 "Buddhist + Presidential" 14 "Buddhist + Monarchy" 15 "Buddhist + One-party" 16 "Buddhist + Military Junta" 17 "Buddhist + Transitional" 18 "Buddhist + Internal Governance"		
label values Relgov Relgov_Var

graph bar AverageTone, over(Relgov, sort(1) descending label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall)) ytitle("Connotation Score (-1 Negative ; +1 Positive)")
graph export "graphs\RelgovTone.png", as(png) replace 
	   
// 					Tone By Newspaper
// Add SD, Mean, NR
egen avg_sentiment_N = mean(AverageTone), by(Newspaper)
egen sdwrite_N = sd(avg_sentiment_N), by(Newspaper)
egen n_N = count(avg_sentiment_N), by(Newspaper)

// Left Wing (Volkskrant, Trouw)
graph bar avg_sentiment_N if Newspaper == 1 | Newspaper == 2, over(Newspaper)  ///
	   ytitle("Connotation Score (-1 Negative ; +1 Positive)") ///
	   legend(order(1 "Volkskrant" 2 "Trouw")) blabel(total, size(vsmall)) ///
	   bar(1, fcolor(0 150 100)) 
graph export "graphs\Leftwing.png", as(png) replace
	   

// Right Wing (Telegraaf, AD)
graph bar avg_sentiment_N if Newspaper == 3 | Newspaper == 5, over(Newspaper)  ///
	   ytitle("Connotation Score (-1 Negative ; +1 Positive)") ///
	   legend(order(1 "Telegraaf" 2 "Algemeen Dagblad")) blabel(total, size(vsmall)) ///
	   bar(1, fcolor(navy)) 
graph export "graphs\Rightwing.png", as(png) replace

// Left vs Right 	   
sort avg_sentiment_N
twoway (bar avg_sentiment_N Newspaper if Newspaper == 1, fcolor(green)) ///
       (bar avg_sentiment_N Newspaper if Newspaper == 2, fcolor(green)) ///
	   (bar avg_sentiment_N Newspaper if Newspaper == 3, fcolor(maroon)) ///
       (bar avg_sentiment_N Newspaper if Newspaper == 4, fcolor(navy))  ///
       (bar avg_sentiment_N Newspaper if Newspaper == 5, fcolor(navy)), ///
       xlabel(1 "Volkskrant" 2 "Trouw" 3 "NRC Handelsblad" 4 "Algemeen Dagblad" 5 "Telegraaf", noticks) ///
       xtitle("Newspaper") ytitle("Connotation Score (-1 Negative ; +1 Positive)") ///
       legend(order(1 "Volkskrant" 2 "Trouw" 3 "NRC Handelsblad" 4 "Telegraaf" 5 "Algemeen Dagblad")) ///
	   note("Green = Left wing, Navy = Right wing")
graph export "graphs\Bothwing.png", as(png) replace
	   
twoway (bar avg_sentiment_N Newspaper if Newspaper == 1, fcolor(green)) ///
       (bar avg_sentiment_N Newspaper if Newspaper == 2, fcolor(green)) ///
	   (bar avg_sentiment_N Newspaper if Newspaper == 3, fcolor(maroon)) ///
       (bar avg_sentiment_N Newspaper if Newspaper == 4, fcolor(navy))  ///
       (bar avg_sentiment_N Newspaper if Newspaper == 5, fcolor(navy)), ///
       xlabel(1 "Volkskrant" 2 "Trouw" 3 "NRC Handelsblad" 4 "Algemeen Dagblad" 5 "Telegraaf", noticks) ///
       xtitle("Newspaper") ytitle("Connotation Score (-1 Negative ; +1 Positive)") ///
       legend(order(1 "Volkskrant" 2 "Trouw" 3 "NRC Handelsblad" 4 "Telegraaf" 5 "Algemeen Dagblad")) ///
	   ysc(r(-1 1)) ytick(-1(0.1)1, nogrid) ///
       note("Green = Left wing, Navy = Right wing")
graph export "graphs\BothwingSmall.png", as(png) replace
	   
// Keyword tone over region	   		
graph bar AverageTone, over(Region2, sort(1) descending label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall)) ytitle("Connotation Score (-1 Negative ; +1 Positive)")
graph export "graphs\Region2.png", as(png) replace


// Keyword tone over religion	   		
graph bar AverageTone, over(Religion, sort(1) descending label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall)) ytitle("Connotation Score (-1 Negative ; +1 Positive)")
graph export "graphs\Religion2.png", as(png) replace

// Keyword tone over religion	   		
graph bar AverageTone, over(Government, sort(1) descending label(angle(45))) bar(1, fcolor(0 150 100)) blabel(total, size(vsmall)) ytitle("Connotation Score (-1 Negative ; +1 Positive)")
graph export "graphs\Religion2.png", as(png) replace


// 					Sentiment change compared to previous interval
// Sentiment of 5 years interval
gen year_interval = floor((year) / 5) * 5 if year >= 1990
egen year_mean5 = mean(AverageTone), by(year_interval)
sort year
twoway (line year_mean5 year, lcolor(green) lwidth(medium)), ///
title("Average connotation over a 5 Years periods") ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
legend(off) xtick(1990(5)2025) scheme(white_viridis)
graph export "graphs\5Yearchange.png", as(png) replace


// Sentiment timeline
egen year_mean = mean(AverageTone), by(year)
twoway (line year_mean year, lcolor(green) lwidth(medium)), ///
title("Average yearly connotation") ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
legend(off) xtick(1990(5)2025) xline(1992 2004 2008 2010 2011 2015) ///
xlabel(1992 "1992 escalation Yugoslav Wars" 2004 "2004 EU Enlargement" 2008 "2008 Global Economic Crisis" 2010 "2010 Arab Spring" 2011 "2011 Syrian Civil War" 2015 "2015 Migrant Crisis in Europe", add angle(55)) ///
scheme(white_viridis)
graph export "graphs\Yearchange.png", as(png) replace

// Keyword over time 
egen year_mean_keyword = mean(AverageTone), by(year Keyword)
sort year Keyword
/// Large analysis 1 "expat" 2 "refugee" 3 "migrant" 4 "asylumseeker"
twoway (line year_mean_keyword year if Keyword == 1, lcolor(green) lwidth(medium) legend(label(1 "Expat"))) ///
      (line year_mean_keyword year if Keyword == 2, lcolor(black) lwidth(medium) legend(label(2 "Refugee"))) ///
      (line year_mean_keyword year if Keyword == 3, lcolor(orange) lwidth(medium) legend(label(3 "Migrant"))) ///
	  (line year_mean_keyword year if Keyword == 4, lcolor(navy) lwidth(medium) legend(label(4 "Asylumseeker"))) ///
	  (line year_mean year , lcolor(maroon) lwidth(medium) legend(label(5 "Average"))), ///
title("Average connotation per year") ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
xtick(1990(5)2025) xline(1992 2004 2008 2010 2011 2015) ///
xlabel(1992 "1992 escalation Yugoslav Wars" 2004 "2004 EU Enlargement" 2008 "2008 Global Economic Crisis" 2010 "2010 Arab Spring" 2011 "2011 Syrian Civil War" 2015 "2015 Migrant Crisis in Europe", add angle(55)) ///
scheme(white_viridis)
graph export "graphs\YearKeywordChange.png", as(png) replace


// Region over time
generate year_mean5_rev = -year_mean5
egen year_mean_region = mean(AverageTone), by(year Region)
/// Large analysis 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
sort year Region
twoway (line year_mean_region year if Region == 1, lcolor(green) lwidth(medium) legend(label(1 "Europe"))) ///
      (line year_mean_region year if Region == 2, lcolor(black) lwidth(medium) legend(label(2 "Africa"))) ///
      (line year_mean_region year if Region == 3, lcolor(orange) lwidth(medium) legend(label(3 "Asia"))) ///
	  (line year_mean year, lcolor(maroon) lwidth(medium) legend(label(4 "Average"))), ///
title("Average connotation per year") ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
xtick(1990(5)2025) xline(1992 2004 2008 2010 2011 2015) ///
xlabel(1992 "1992 escalation Yugoslav Wars" 2004 "2004 EU Enlargement" 2008 "2008 Global Economic Crisis" 2010 "2010 Arab Spring" 2011 "2011 Syrian Civil War" 2015 "2015 Migrant Crisis in Europe", add angle(55)) ///
scheme(white_viridis) note("Note: Europe consists of only one country", span)
graph export "graphs\Yearregionchange.png", as(png) replace

//// One on One
twoway ///
bar year_mean5_rev year_interval if Region == 2, horizontal ///
|| ///
bar year_mean5 year_interval if Region == 3, horizontal ///
|| ///
, ylabel(1990(5)2023) xlabel(-0.4 "-0.4" -0.2 "-0.2" 0 "0" 0.2 "-0.2" 0.4 "-0.4") ///
xtitle("Average Tone over 5 Year Periods (-1 = negative, +1 = positive)") ytitle("") ///
legend(label(1 Africa) label(2 Asia)) ///
title("Comparison of Average Tone in Different Regions Over Time") ///
subtitle("Year 1990-2023") ///

// Final Time
// Gov over time 1 "Presidential / Separated republics" 2 "Consitutional Monarchy" 3 "Theocracy" 4 "One-party States" 5 "Military Junta" 6 "Transitional" 7 "Internal Governance"
egen year_mean_gov = mean(AverageTone), by(year Government)
sort year Government
/// Large analysis 1 "Europe" 2 "Africa" 3 "Asia" 4 "N. America" 5 "S. America"
twoway (line year_mean_gov year if Government == 1, lcolor(green) lwidth(medium) legend(label(1 "Presidential"))) ///
      (line year_mean_gov year if Government == 2, lcolor(black) lwidth(medium) legend(label(2 "Monarchy"))) ///
      (line year_mean_gov year if Government == 3, lcolor(orange) lwidth(medium) legend(label(3 "One-party"))) ///
	  (line year_mean_gov year if Government == 4, lcolor(purple) lwidth(medium) legend(label(4 "Military Junta"))) ///
      (line year_mean_gov year if Government == 5, lcolor(pink) lwidth(medium) legend(label(5 "Transitional"))) ///
      (line year_mean_gov year if Government == 6, lcolor(blue) lwidth(medium) legend(label(6 "Internal Governance"))), ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
xtick(1990(5)2025) xline(1992 2004 2008 2010 2011 2015) ///
scheme(white_viridis)
graph export "graphs\YearGovchangeAppendix.png", as(png) replace
/// For analysis
twoway ///
      (line year_mean_gov year if Government == 3, lcolor(orange) lwidth(medium) legend(label(1 "One-party"))) ///
	  (line year_mean_gov year if Government == 4, lcolor(purple) lwidth(medium) legend(label(2 "Military Junta"))) ///
      (line year_mean_gov year if Government == 5, lcolor(pink) lwidth(medium) legend(label(3 "Transitional"))), ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
xtick(1990(5)2025) xline(1992 2004 2008 2010 2011 2015) ///
scheme(white_viridis)
graph export "graphs\YearGovchange.png", as(png) replace

// Religion over time 1 "muslim" 2 "christian" 3 "buddhist"
egen year_mean_rel = mean(AverageTone), by(year Religion)
sort year Religion
twoway ///
      (line year_mean_rel year if Religion == 1, lcolor(orange) lwidth(medium) legend(label(1 "muslim"))) ///
	  (line year_mean_rel year if Religion == 2, lcolor(navy) lwidth(medium) legend(label(2 "christian"))), ///
xtitle("Year") ytitle("Average connotation (-1 = negative, +1 = positive)") ///
graphregion(color(white)) plotregion(color(white)) ///
xtick(1990(5)2025) xline(1992 2004 2008 2010 2011 2015) ///
scheme(white_viridis) note("note: Buddhist religion excluded do the lack of data", span)
graph export "graphs\YearReligionchange.png", as(png) replace



********************
*  Close the file  *
********************

save "Output/EndData", replace
log close


add weights to realistic value
twoway bar Keyword CountryCode, ytitle("Title y1") || line avg_sentiment CountryCode, yaxis(2) ytitle("Title y2" axis(2))



twoway matrix your_matrix_variable, rowvar(Country) colvar(Keyword)
table Country Keyword [fw=n]


table Country Keyword
return list
heatplot Keyword Country
quietly correlate AverageTone Region Religion Government
matrix C = r(C)
heatplot C, values(format(%9.3f)) color(hc) ///
	legend(off) aspectratio(1)


bar Amount, over(Country, label(angle(45)))
bar Percentage, over(Country, label(angle(45)))

blabel(total, size(vsmall))
//////
// Only by country
graph bar (sum) expat refugee migrant asylumseeker if Country == 1, over(Newspaper, label(angle(90)) gap(100)) stack title("Marokko")
graph save "graphs\graph1", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 2, over(Newspaper, label(angle(90)) gap(100)) stack title("Ukraine")
graph save "graphs\graph2", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 3, over(Newspaper, label(angle(90)) gap(100)) stack title("Turkije")
graph save "graphs\graph3", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 4, over(Newspaper, label(angle(90)) gap(100)) stack title("Syrie")
graph save "graphs\graph4", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 5, over(Newspaper, label(angle(90)) gap(100)) stack title("Sudan")
graph save "graphs\graph5", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 6, over(Newspaper, label(angle(90)) gap(100)) stack title("Afghanistan")
graph save "graphs\graph6", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 7, over(Newspaper, label(angle(90)) gap(100)) stack title("Irak")
graph save "graphs\graph7", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 8, over(Newspaper, label(angle(90)) gap(100)) stack title("Yemen")
graph save "graphs\graph8", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 9, over(Newspaper, label(angle(90)) gap(100)) stack title("Libanon")
graph save "graphs\graph9", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 10, over(Newspaper, label(angle(90)) gap(100)) stack title("Eritrea")
graph save "graphs\graph10", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 11, over(Newspaper, label(angle(90)) gap(100)) stack title("Libia")
graph save "graphs\graph11", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 12, over(Newspaper, label(angle(90)) gap(100)) stack title("Pakistan")
graph save "graphs\graph12", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 13, over(Newspaper, label(angle(90)) gap(100)) stack title("Somalia")
graph save "graphs\graph13", replace
graph combine "graphs\graph1" "graphs\graph2" "graphs\graph3" "graphs\graph4" "graphs\graph5" "graphs\graph6" "graphs\graph7" "graphs\graph8" "graphs\graph9" "graphs\graph10" "graphs\graph11" "graphs\graph12" "graphs\graph13", xcommon iscale(0.5)

// Country and year over 2021
graph bar (sum) expat refugee migrant asylumseeker if Country == 1 & Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Marokko")
graph save "graphs\TimeM", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 2 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Ukraine")
graph save "graphs\TimeU", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 3 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Turkije")
graph save "graphs\TimeT", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 4 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Syrie")
graph save "graphs\TimeSy", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 5 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Sudan")
graph save "graphs\TimeSu", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 6 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Afghanistan")
graph save "graphs\TimeAf", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 7 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Irak")
graph save "graphs\TimeIr", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 8 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Yemen")
graph save "graphs\TimeYe", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 9 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Libanon")
graph save "graphs\TimeLe", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 10 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Eritrea")
graph save "graphs\TimeEr", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 11 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Libia")
graph save "graphs\TimeLi", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 12 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Pakistan")
graph save "graphs\TimePa", replace
graph bar (sum) expat refugee migrant asylumseeker if Country == 13 Year >= 2021, over(Newspaper, label(angle(90)) gap(100)) stack title("Somalia")
graph save "graphs\TimeSo", replace
graph combine "graphs\graphTimeM" "graphs\graphTimeU" "graphs\graphTimeT" "graphs\graphTimeSy" "graphs\graphTimeSu" "graphs\graphTimeAf" "graphs\graphTimeIr" "graphs\graphTimeYe" "graphs\graphTimeLe" "graphs\graphTimeLe" "graphs\graphTimeEr" "graphs\graphTimeLi" "graphs\graphTimePa" "graphs\graphTimeSo", xcommon iscale(0.5)

graph bar (sum) expat refugee migrant asylumseeker if Region == 1, over(Newspaper) stack title("Europe")
graph save "graphs\regionE", replace
graph bar (sum) expat refugee migrant asylumseeker if Region == 2, over(Newspaper) stack title("Africa")
graph save "graphs\regionAf", replace
graph bar (sum) expat refugee migrant asylumseeker if Region == 3, over(Newspaper) stack title("Asia")
graph save "graphs\regionAs", replace
graph combine "graphs\regionE" "graphs\regionAf" "graphs\regionAs"

graph bar (mean) NegativeFlag PositiveFlag Neutral, over(Region) 
twoway bar Keyword CountryCode, ytitle("Title y1") || bar avg_sentiment CountryCode, yaxis(2) ysc(reverse) ytitle("Title y2" axis(2))