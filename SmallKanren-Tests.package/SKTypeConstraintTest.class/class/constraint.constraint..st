as yet unclassified
constraint: aConstraint constraint: bConstraint
	^ aConstraint =/= bConstraint & (self constraint: aConstraint ) & (self constraint: bConstraint)