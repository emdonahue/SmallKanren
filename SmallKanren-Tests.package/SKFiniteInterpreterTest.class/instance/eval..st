generative
eval: prog
	| result |
	result := (prog
		inject: SKGoal succeed
		into: [ :g :line | g & (self evalLine: line) ]) runner.
	result atEnd
		ifTrue: [ ^ Cons empty ]
		ifFalse: [ ^ result
				=>
					(interpreter vars collect: [ :v | variables at: v ifAbsent: v ])
						asConsTree ]