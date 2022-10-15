running
run: aState runtime: aRuntime
	<todo> "Is full unifier necessary or can we skip checking bindigs/priorities?"
	| s freevars sub bindings |
	
	"Get all free vars and bindings of bound vars."
	bindings := externals collect: [ :v | aState walkBinding: v ]. 
	"Unify pattern and walked vars to merge information from both sources."	
	sub := SKSubstitution new asDisequalitySubstitution.
	bindings doWithIndex: [ :b :i | sub := (sub unify: (pattern at: i ifAbsent: b val) with: b val) ifFailure: [ ^ SKStream failure ] ].
	"Unify ground atoms from pattern in the next state (free vars will self unify and so not enter the substitution)."
	s := bindings inject: aState into: [ :st :b | (st unify: b val with: (sub reify: b val)) ifFailure: [ ^ SKStream failure ] ].
	"Get the free variables that have not yet been bound or are bound (preemtively) but still in the schedule (and are not simply ground terms from the input data)."
	freevars := bindings withIndexSelect: [ :b :i |
		b var isSKVar and: [ b isUnbound
			or: [ (aState schedule anySatisfy: [ :g | g dependsOnExternal: b var ])]]].
	"If all terms are ground, execute immediately,"
	freevars ifEmpty: [ ^ (self expandBlockWithVars: (sub reify: internals)) run: s runtime: aRuntime ].
	"Otherwise add to the schedule."
	^ s addScheduledGoal: (self copy externals: (freevars collect: #var); internals: (sub reify: internals)).