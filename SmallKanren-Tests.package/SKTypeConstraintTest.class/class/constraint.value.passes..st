as yet unclassified
constraint: aConstraint value: aValue passes: doesPass
	^ (aConstraint === SKNumberConstraint singleton & (aValue === 1) & (doesPass === true))
	| (aConstraint === SKNumberConstraint singleton & (aValue === #symbol) & (doesPass === false))
	| (aConstraint === SKSymbolConstraint singleton & (aValue === 1) & (doesPass === false))
	| (aConstraint === SKSymbolConstraint singleton & (aValue === #symbol) & (doesPass === true))