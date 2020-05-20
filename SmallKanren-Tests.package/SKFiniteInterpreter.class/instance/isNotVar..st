parsing
isNotVar: x
	^ primitives associations
		inject: SKGoal fail
		into: [ :goal :a | 
			a key = #var
				ifTrue: goal
				ifFalse: [ a value inject: goal into: [ :g :v | g | (x === v) ] ] ]