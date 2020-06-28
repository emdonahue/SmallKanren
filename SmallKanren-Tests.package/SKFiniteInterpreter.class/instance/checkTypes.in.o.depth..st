typeo
checkTypes: types in: env o: out depth: depth
	"Run all typeo constraints. Types is a list of (var . type) pairs."

	depth = 0
		ifTrue: [ ^ env === out ].
	^ [ :var :const :rest :val | 
	"If the search has already failed, pass along the empty substitution."
	{{(types === Cons empty & (env === out)).
	
	{(self walk: var env: env o: val).
	(((var cons: const) cons: rest) === types).
	(self is: val type: const)
	& (self checkTypes: rest in: env o: out depth: depth - 1)
	| ((self not: val type: const) & (out === Cons empty))}}} ] asGoal