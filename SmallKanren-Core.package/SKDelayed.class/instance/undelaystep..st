undelaying
undelaystep: aVarDelay
	"Manually fires the delayed var on the state, returning either the resulting state, or a delay that maintains the rest of the delayed vars if there are any."
	<todo>
	<type: #Cons returns: #(OrC isNotPackage packageC)>
	^ (suspendedVars remove: aVarDelay) ifEmpty: [ aVarDelay cdr checkIn: state ] ifNotEmpty: [ :vars | aVarDelay cdr checkIn: (state suspendedVars: vars) ]