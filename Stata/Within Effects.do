** Within treatments effects **
* Create anchor groups *
egen anchor_group = cut(anchor) if treatment == 1, group(2)
ereplace anchor_group = cut(anchor) if treatment == 2, group(2)
ereplace anchor_group = cut(anchor) if treatment == 3, group(2)
ereplace anchor_group = cut(anchor) if treatment == 4, group(2)
gen anchor_group_ex = (anchor>1.5) if treatment == 1
replace anchor_group_ex = (anchor>1.5) if treatment == 2
replace anchor_group_ex = (anchor>1.5) if treatment == 3
replace anchor_group_ex = (anchor>1.5) if treatment == 4
tab anchor_group anchor_group_ex
label define anchor_groups 1 "High" 0 "Low"
label values anchor_group anchor_groups
* Boxplots (Figure 1) *
graph box wta, over(anchor_group) over(treatment) ///
 box(1, color(navy%100)) box(2,color(navy%50)) ///
 asyvars showyvars leg(off) nooutside name("Figure1")
gr_edit .style.editstyle boxstyle(shadestyle(color(white))) editcopy
gr_edit style.editstyle boxstyle(linestyle(color(white))) editcopy
gr_edit .note.text = {}

* Within treatment tests *
bysort treatment: ranksum wta, by(anchor_group)
bysort treatment: pwcorr anchor wta, sig obs

** Regressions (Result 2) **
tobit wta anchor gender age education if treatment == 1, ul(3) ll(0)
tobit wta anchor gender age education if treatment == 2, ul(3) ll(0)
tobit wta anchor gender age education if treatment == 3, ul(3) ll(0)
tobit wta anchor gender age education if treatment == 4, ul(3) ll(0)
