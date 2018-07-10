undelaying
undelaystep: aVarDelay runner: aRunner
	"Manually fires the delayed var on the state for debugging, returning either the resulting state, or a delay that maintains the rest of the delayed vars if there are any."

	<todo>
	<type: #SKDelayedVar returns: #(OrC isNotPackage packageC)>
	^ (suspendedVars remove: aVarDelay)
		ifEmpty: [ aVarDelay checkIn: state runner: aRunner ]
		ifNotEmpty: [ :vars | aVarDelay checkIn: (state suspendedVars: vars) runner: aRunner ].