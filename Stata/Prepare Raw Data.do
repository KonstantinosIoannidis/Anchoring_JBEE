** Generate index variable **
generate index = _n
order index, first

** Label values **
label define genders 1 "Female" 0 "Male" 2 "Other"
label values gender genders
label define educations 1 "University" 0 "High School"
label values education educations
label define influences 1 "Yes" 0 "No"
label values anchor_influence influences
label define demands 1 "Yes" 0 "No"
label values anchor_demand demands
label define decisions 1 "Sell" 0 "Keep"
label values sell decisions
label values anchor_decision decisions
label define treatments 1 "NoInfo" 2 "RandomInfo" 3 "RangeInfo" 4 "FullInfo"
label values treatment treatments

** Label variables **
label variable index "Index"
label variable treatment "Treatment"
label variable anchor "Anchor"
label variable anchor_decision "Anchor decision"
label variable wta "Willingness to Accept (in pounds)"
label variable anchor_influence "Influence by anchor"
label variable anchor_demand "Experimenter demand"
label variable age "Age"
label variable gender "Gender"
label variable education "Education status"
label variable price "BDM price"
label variable sell "BDM outcome"
label variable lottery_outcome "Lottery outcome"
label variable payment_bonus "Bonus payment"
label variable payment_total "Total payment"
label variable duration "Duration (in seconds)"

** Label Dataset **
label data "Anchoring and Perceived Informativeness - Experiment"