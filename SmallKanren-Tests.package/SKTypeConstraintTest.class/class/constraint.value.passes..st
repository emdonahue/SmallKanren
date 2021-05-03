as yet unclassified
constraint: aConstraint value: aValue passes: doesPass
	^ (aConstraint === SKNumbero singleton & (aValue === 1) & (doesPass === true))
	| (aConstraint === SKNumbero singleton & (aValue === #symbol) & (doesPass === false))
	| (aConstraint === SKSymbolo singleton & (aValue === 1) & (doesPass === false))
	| (aConstraint === SKSymbolo singleton & (aValue === #symbol) & (doesPass === true))