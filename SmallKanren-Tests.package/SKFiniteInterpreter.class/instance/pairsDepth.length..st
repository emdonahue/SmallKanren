parsing
pairsDepth: depth length: length
	| vars vals |
	depth = 0
		ifTrue: [ ^ #() ].
	length = 0
		ifTrue: [ ^ #() ].
	vars := self vars
		collect: [ :v | 
			{v.
			v cons} ].
	vals := self values
		collect: [ :v | 
			{v.
			Cons empty} ].
	^ vars , vals , (self pairsDepth: depth - 1 length: length)
		inject: #()
		into: [ :out :p1 | 
			out
				,
					(vars , vals , (self pairsDepth: depth length: length - 1)
						collect: [ :p2 | 
							{(p1 first cons: p2 first).
							(p1 second , p2 second) removeDuplicates force} ]) ]