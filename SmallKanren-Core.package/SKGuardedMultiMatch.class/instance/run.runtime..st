running
run: aState runtime: aRuntime
	<todo> "should not use fdsassociation directly in case that is a ground var. need internal assoc obj."
	| s freevars sub bindings walked |
	
	"Get all free vars and bindings of bound vars."
	bindings := externals collect: [ :v | aState substitution walkBinding: v ]. 
	"Get the fully walked variables to unify with pattern."
	walked := bindings collectWithIndex: [ :v :i | 
		(v isFDSAssociation & (externals at: i) isSKVar) ifTrue: [ v val ] ifFalse: [ v ] ]. 
	"Unify pattern and walked vars to merge information from both sources."	
	sub := SKSubstitution new asDisequalitySubstitution.
	walked doWithIndex: [ :v :i | sub := (sub unify: (pattern at: i ifAbsent: v) with: v) ifFailure: [ ^ SKStream failure ] ].
	"Unify ground atoms from pattern in the next state (free vars will self unify and so not enter the substitution)."
	s := walked inject: aState into: [ :st :v | (st unify: v with: (sub reify: v)) ifFailure: [ ^ SKStream failure ] ].
	"Get the free variables that have not yet been bound or are bound (preemtively) but still in the schedule (and are not simply ground terms from the input data)."
	freevars := (bindings collectWithIndex: [ :v :i | 
		(v isFDSAssociation and: 
			[ (externals at: i) isSKVar and:
				(aState schedule anySatisfy: [ :f | f includesVar2: v key ])])
			ifTrue: [ v key ] 
			ifFalse: v ])
		select: [ :v | v isSKVar ].
	"If all terms are ground, execute immediately,"
	freevars ifEmpty: [ ^ (self expandBlockWithVars: (sub reify: internals)) run: s runtime: aRuntime ].
	"Otherwise add to the schedule."
	^ s addScheduledGoal: (self copy var: freevars; vars: (sub reify: internals); vals: (bindings collect: [ :v | v isFDSAssociation ifTrue: [ v key ] ifFalse: v ])).