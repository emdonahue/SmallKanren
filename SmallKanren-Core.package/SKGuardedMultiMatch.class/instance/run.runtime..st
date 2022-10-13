running
run: aState runtime: aRuntime
	| s freevars sub bindings vars vals |
	
	"Get all free vars and bindings of bound vars."
	bindings := externals collect: [ :v | aState substitution walkBinding: v ]. 
	"Get varables and ground terms."
	vars := bindings collectWithIndex: [ :v :i | 
		v isSKBinding ifTrue: [ v key ] ifFalse: [ v ] ].
	"Get the fully walked variables to unify with pattern."
	vals := bindings collectWithIndex: [ :v :i | 
		v isSKBinding ifTrue: [ v val ] ifFalse: [ v ] ].
	"Unify pattern and walked vars to merge information from both sources."	
	sub := SKSubstitution new asDisequalitySubstitution.
	vals doWithIndex: [ :v :i | sub := (sub unify: (pattern at: i ifAbsent: v) with: v) ifFailure: [ ^ SKStream failure ] ].
	"Unify ground atoms from pattern in the next state (free vars will self unify and so not enter the substitution)."
	s := vals inject: aState into: [ :st :v | (st unify: v with: (sub reify: v)) ifFailure: [ ^ SKStream failure ] ].
	"Get the free variables that have not yet been bound or are bound (preemtively) but still in the schedule (and are not simply ground terms from the input data)."
	freevars := vars withIndexSelect: [ :v :i |
		v isSKVar and: [ 
			(bindings at: i) isSKVar or: [ (aState schedule anySatisfy: [ :g | g dependsOnExternal: v ])]]].
	"If all terms are ground, execute immediately,"
	freevars ifEmpty: [ ^ (self expandBlockWithVars: (sub reify: internals)) run: s runtime: aRuntime ].
	"Otherwise add to the schedule."
	^ s addScheduledGoal: (self copy externals: freevars; internals: (sub reify: internals); vals: vars).