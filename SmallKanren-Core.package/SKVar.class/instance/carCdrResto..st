delaying
carCdrResto: aBlock
	| vars |
	vars := (aBlock argumentNames copyFrom: 1 to: 3) collect: [ :n | SKTaggedVar tag: n ].
	^ SKGuardedMultiMatch 
		var: {self}
		pattern: ((vars first cons: vars second) cons: vars third) cons
		vars: vars
		block: aBlock.