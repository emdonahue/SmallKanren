running
run: aState runtime: aRuntime
	<todo> "should not use fdsassociation directly in case that is a ground var. need internal assoc obj."
	| s freevars sub bindings walked |
	
	"Get all free vars and bindings of bound vars."
	bindings := var collect: [ :v | aState substitution walkBinding: v ]. 
	"Get the fully walked variables to unify with pattern."
	walked := (bindings collect: [ :v | v isFDSAssociation ifTrue: [ v val ] ifFalse: v ]) asConsTree. 
	"Unify pattern and walked vars to merge information from both sources."	
	sub := (SKSubstitution empty unify: pattern with: walked runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	"Unify ground atoms from pattern in the next state (free vars will self unify and so not enter the substitution)."
	s := (aState unify: walked with: (sub reify: walked) runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	"Get the free variables that have not yet been bound or are bound but still in the schedule."
	freevars := bindings collect: [ :v | v isFDSAssociation ifTrue: [ v key ] ifFalse: v ]
		thenSelect: [ :v | v isSKVar ].
	"If all terms are ground, execute immediately,"
	freevars ifEmpty: [ ^ (self expandBlockWithVars: (sub reify: vars)) run: s runtime: aRuntime ].
	"Otherwise add to the schedule."
	^ s addSchedule: (self copy var: freevars; vars: (sub reify: vars)).