walking
walkBinding: aVariable
	"Look up the last pair in the chain of bindings beginning with aVariable, whether or not it is bound."
	aVariable isSKVar ifFalse: [ ^ SKBinding unbound: aVariable ]. "Return ground terms immediately."
	^ bindings detect: [ :b | b key = aVariable ]
		ifFound: [ :b | 
			b val isSKVar 
				ifTrue: [ self walkBinding: b val ] "Continue walking while we have a var."
				ifFalse: [ b ]] "Stop walking when we find a ground term and return the binding."
		ifNone: [ SKBinding unbound: aVariable ]. "If a var is free, it is the last var in its chain. Bindings of self->self indicate variables not in the substitution."