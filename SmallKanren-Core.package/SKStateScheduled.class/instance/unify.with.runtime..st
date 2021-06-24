unifying
unify: aVar with: aVal runtime: aRuntime
	<todo> "general style"
	"Walk the bindings of the var and val. "
	| aBinding bBinding s aTerm bTerm |
	aBinding := substitution walkBinding: aVar.
	bBinding := substitution walkBinding: aVal.
	aTerm := aBinding isFDSAssociation ifTrue: [ aBinding val ] ifFalse: aBinding.
	bTerm := bBinding isFDSAssociation ifTrue: [ bBinding val ] ifFalse: bBinding.
	
	s := self 
		unify: aTerm
		noWalk: bTerm
		runtime: aRuntime.

	aBinding isFDSAssociation & bBinding isSKVar not ifTrue: [ s := s prioritize: aBinding key schedule: bTerm ]. 
	bBinding isFDSAssociation & aBinding isSKVar not ifTrue: [ s := s prioritize: bBinding key schedule: aTerm ]. 

	 ^ s.