undelaying
undelaystep
	"this call to unify ground to reuse the unifier to dispatch the constraint does an unnecessary lookup in the constraint store for the var. we can shortcut that...?"

	"make sure to transfer any delayed cache info when we do the new asdelayed"

	"^ suspendedVars cdr ifEmpty: [ suspendedVars car cdr checkIn: state ] ifNotEmpty: [ :vars | suspendedVars car cdr checkIn: (state suspendedVars: vars) ]"

	<todo>
	<returns: #(OrC isNotPackage packageC)>
	^ self undelaystep: suspendedVars first