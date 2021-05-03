constraining
extend: aVar checkVar: otherVar
	<todo> "pass info that this var is free to constraints to proceed straight to merge"
	<type: #SKVar type: #SKVar returns: #(OrC SKState SKFailure)>
	"Called by a Var during unification once it decides both that unification was successful (and so we should proceed to constraint satisfaction) and that unification is with a free Var, so there is no need to occurs check it."
	^ (self extend: aVar noOccursCheck: otherVar) check: aVar against: otherVar