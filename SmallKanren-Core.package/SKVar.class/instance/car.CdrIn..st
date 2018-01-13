delaying
car: aCar CdrIn: aBlock
	| var |
	var := SKVar new.
	^ self === (aCar cons: var)
		&
			(SKCdrDelay new
				var: var;
				block: aBlock)