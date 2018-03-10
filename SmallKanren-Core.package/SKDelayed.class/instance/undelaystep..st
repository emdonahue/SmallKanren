undelaying
undelaystep: aVarDelay
	<todo>
	<returns: #(OrC isNotPackage packageC)>
	^ (suspendedVars remove: aVarDelay)
		ifEmpty: [ aVarDelay cdr checkIn: state ]
		ifNotEmpty: [ :vars | aVarDelay cdr checkIn: (state suspendedVars: vars) ]