generative
reify: evaled
	evaled atEnd
		ifTrue: [ ^ Cons empty ]
		ifFalse: [ ^ evaled reifyNoConstraints:
					(interpreter vars collect: [ :v | variables at: v ifAbsent: v ])
						asConsTree ]