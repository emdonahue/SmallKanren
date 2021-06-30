*SmallKanren-Core
carCdrResto: aBlock
	^ self 
		ifEmpty: SKGoal fail 
		ifNotEmpty: [ :s | 
			s car isCons & (s car ~= Cons empty) 
				ifTrue: [ ^ SKGuardedMultiMatch expandBlock: aBlock withVars: {s car car. s car cdr. s cdr} ].
			s car isSKVar ifTrue: [ | vars |
				vars := (aBlock argumentNames copyFrom: 1 to: 2) collect: [ :n | SKTaggedVar tag: n ].
				^ (s car === (vars first cons: vars second))
					& (SKGuardedMultiMatch expandBlock: aBlock withVars: (vars copyWith: s cdr)) ].
			^ SKGoal fail ].