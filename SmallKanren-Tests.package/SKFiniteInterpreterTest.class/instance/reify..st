generative
reify: evaled
	| next |
	next := evaled next.
	next atEnd
		ifTrue: [ ^ Cons empty ]
		ifFalse: [ ^ next reifyNoConstraints:
					(interpreter vars collect: [ :v | variables at: v ifAbsent: v ])
						asConsR ]