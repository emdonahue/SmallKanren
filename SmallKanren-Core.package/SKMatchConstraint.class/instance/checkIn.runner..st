checking
checkIn: aSKState runner: aSKRunner
	"Can maybe subunify or something bc all vars in pattern are fresh & no constraints, altho unify may fail."

	"can just extend state, dont have to unify if we know its a var."
	"if the suubstitution delta captures all free vars, none of them is an extension and we can throw away the new associations..?"

	<todo>
	| s term |
	term := aSKState walk: delayedVar.
	term isSKVar
		ifTrue: [ ^ (aSKState unify: term with: pattern) bind: (block valueWithArguments: matchVars) runner: aSKRunner ].
	s := aSKState substitution unify: pattern with: delayedVar.
	self halt.