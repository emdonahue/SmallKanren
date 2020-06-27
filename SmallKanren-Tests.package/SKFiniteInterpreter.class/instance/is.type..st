typeo
is: var type: type
"Check that a walked var is a symbol, number, or free for the typeo constraint check."

	^ (self is: var in: self vars)
		| (type === #number & (self is: var in: self numbers))
		| (type === #symbol & (self is: var in: self symbols))