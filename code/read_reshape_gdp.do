import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/pop.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long pop, i(countrycode) j(year)
rename pop population
label variable population "Population"
save "data/derived/population.dta", replace