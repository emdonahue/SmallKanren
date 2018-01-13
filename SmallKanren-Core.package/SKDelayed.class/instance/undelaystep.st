undelaying
undelaystep
	"this call to unify ground to reuse the unifier to dispatch the constraint does an unnecessary lookup in the constraint store for the var. we can shortcut that...?"

	"make sure to transfer any delayed cache info when we do the new asdelayed"

	<todo>
	<returns: #(OrC isNotPackage packageC)>
	| v c |
	v := delayedVars car.
	c := self constraints at: v.
	^ delayedVars cdr ifEmpty: [ c finUndelay: v bind: state ] ifNotEmpty: [ :vars | c finUndelay: v bind: (state delay: vars) ]