checking
checkAgainst: aTerm in: aSKState runner: aSKRunner
"Can maybe subunify or something bc all vars in pattern are fresh & no constraints, altho unify may fail."

	"can just extend state, dont have to unify if we know its a var."

	"if the suubstitution delta captures all free vars, none of them is an extension and we can throw away the new associations. this will probably only happen if other delays have fired first, so maybe we can handle all delays at once in the conjoined. otherwise we may be able to do some lookups in the existing term (and throw away the new vars) and some creations of new vars"

	<todo>
	^ (aSKState unify: aTerm with: pattern) bind: (block valueWithArguments: matchVars) asGoal runtime: aSKRunner.