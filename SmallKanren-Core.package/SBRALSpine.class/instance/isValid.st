contracts
isValid
	^ ( rest isEmpty or: [ tree size <= rest tree size ]) and: [ tree isValid ].