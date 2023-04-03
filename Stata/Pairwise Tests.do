* Paiwise comparisons *
tobit wta c.anchor##i.treatment age gender education, ul(3) ll(0)
test 1.treatment = 2.treatment
test 1.treatment = 3.treatment
test 1.treatment = 4.treatment
test 2.treatment = 3.treatment
test 2.treatment = 4.treatment
test 3.treatment = 4.treatment
tobit wta anchor_group##treatment age gender education, ul(3) ll(0)
test 1.anchor_group#1.treatment = 1.anchor_group#2.treatment
test 1.anchor_group#1.treatment = 1.anchor_group#3.treatment
test 1.anchor_group#1.treatment = 1.anchor_group#4.treatment
test 1.anchor_group#2.treatment = 1.anchor_group#3.treatment
test 1.anchor_group#2.treatment = 1.anchor_group#4.treatment
test 1.anchor_group#3.treatment = 1.anchor_group#4.treatment