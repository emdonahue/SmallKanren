*SmallKanren-Core
car: aCar list: aSize o: aBlock
	^ self ifEmpty: SKGoal fail
		ifNotEmpty: [ :s | |vars |
			vars := (aBlock argumentNames copyFrom: 1 to: aSize) collect: [ :n | SKVar tag: n].
			(SKGuardedMatch 
				pattern: (aCar cons: vars asCons)
				vars: vars
				block: aBlock) groundGoal: s ].