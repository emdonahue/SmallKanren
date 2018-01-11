conjoined
testConjoinFailEarly
	"Goals that return strict Fails when undelayed should obviate the need to actually run any of the other goals."
	
	| g second delayBlock |
	self skip.
	second := false.
	delayBlock := [ :a :d | 
	second
		ifTrue: [ Error signal ]
		ifFalse: [ second := true.
			SKFailure singleton ] ]. "Throw an error iff we expand both goals, to prove that the failure fails early."
	g := (x carCdrIn: delayBlock) asGoal & (x carCdrIn: delayBlock).
	self assert: g step isDelayed.
	self assert: g step step isEmptyStream