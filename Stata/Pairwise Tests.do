* Paiwise comparisons (Model 1) *
tobit wta c.anchor##i.treatment age gender education, ul(3) ll(0)
* Main and interactions effects *
test (1.treatment = 2.treatment) (1.treatment#c.anchor = 2.treatment#c.anchor)
test (1.treatment = 3.treatment) (1.treatment#c.anchor = 3.treatment#c.anchor)
test (1.treatment = 4.treatment) (1.treatment#c.anchor = 4.treatment#c.anchor)
test (2.treatment = 3.treatment) (2.treatment#c.anchor = 3.treatment#c.anchor)
test (2.treatment = 4.treatment) (2.treatment#c.anchor = 4.treatment#c.anchor)
test (3.treatment = 4.treatment) (3.treatment#c.anchor = 4.treatment#c.anchor)
* Main effects only (footnote 8) *
test 1.treatment = 2.treatment
test 1.treatment = 3.treatment
test 1.treatment = 4.treatment
test 2.treatment = 3.treatment
test 2.treatment = 4.treatment
test 3.treatment = 4.treatment
* Interaction effects only (footnote 8) *
test 1.treatment#c.anchor = 2.treatment#c.anchor
test 1.treatment#c.anchor = 3.treatment#c.anchor
test 1.treatment#c.anchor = 4.treatment#c.anchor
test 2.treatment#c.anchor = 3.treatment#c.anchor
test 2.treatment#c.anchor = 4.treatment#c.anchor
test 3.treatment#c.anchor = 4.treatment#c.anchor
* Paiwise comparisons (Model 2) *
tobit wta anchor_group##treatment age gender education if treatment == 1 | treatment == 2, ul(3) ll(0)
tobit wta anchor_group##treatment age gender education if treatment == 1 | treatment == 3, ul(3) ll(0)
tobit wta anchor_group##treatment age gender education if treatment == 1 | treatment == 4, ul(3) ll(0)
tobit wta anchor_group##treatment age gender education if treatment == 2 | treatment == 3, ul(3) ll(0)
tobit wta anchor_group##treatment age gender education if treatment == 2 | treatment == 4, ul(3) ll(0)
tobit wta anchor_group##treatment age gender education if treatment == 3 | treatment == 4, ul(3) ll(0)