as yet unclassified
constraint: aConstraint constraint: bConstraint value: aValue passes: doesPass
	^ (self constraint: bConstraint)
		&
			((aConstraint =/= bConstraint & (self constraint: aConstraint value: aValue passes: SKVar new) & (doesPass === false))
				| (aConstraint === bConstraint & (self constraint: aConstraint value: aValue passes: doesPass)))