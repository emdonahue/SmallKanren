constraining
checkVar: bVar extend: aVar runtime: aRuntime
	<todo> "pass info that this var is free to constraints to proceed straight to merge"
	<type: #SKVar type: #SKVar type: #SKRuntime type: #(OrC SKPackage SKFailure)>
	"Called by a Var during unification once it decides both that unification was successful (and so we should proceed to constraint satisfaction) and that unification is with a free Var, so there is no need to occurs check it."
	^ constraints checkVar: bVar extend: aVar in: self runtime: aRuntime.