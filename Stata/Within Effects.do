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
 asyvars showyvars leg(off) nooutside
gr_edit .style.editstyle boxstyle(shadestyle(color(white))) editcopy
gr_edit style.editstyle boxstyle(linestyle(color(white))) editcopy
gr_edit .note.text = {}
graph export "boxplots.png", as(png) replace
graph drop _all

* Within treatment tests *
bysort treatment: ranksum wta, by(anchor_group)
bysort treatment: pwcorr anchor wta, sig obs

** Regressions (Result 2) **
eststo tobit1: quietly ///
tobit wta anchor gender age education if treatment == 1, ul(3) ll(0)
eststo tobit2: quietly ///
tobit wta anchor gender age education if treatment == 2, ul(3) ll(0)
eststo tobit3: quietly ///
tobit wta anchor gender age education if treatment == 3, ul(3) ll(0)
eststo tobit4: quietly ///
tobit wta anchor gender age education if treatment == 4, ul(3) ll(0)
esttab tobit1 tobit2 tobit3 tobit4, ///
star(* 0.10 ** 0.05 *** 0.01) ///
mlabels("NoInfo" "RandomInfo" "RangeInfo" "FullInfo") ///
indicate(Controls = gender age education) se r2 label nonumber nonotes noomitted nobaselevels interaction(*) b(3) obslast type replace ///
addnotes("Controls: Age Gender Study" ///
"Standard errors in parenthesis" ///
"\sym{*} \(p<0.10\), \sym{**} \(p<0.05\), \sym{***} \(p<0.01\)")
