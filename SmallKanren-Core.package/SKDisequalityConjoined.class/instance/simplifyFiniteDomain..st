simplifying
simplifyFiniteDomain: aFD
	<todo> "If FD contains the first value, then we could simplify by removing that element from the FD and applying the remaining conjuncts to the next variable. However, we can't do that during merge without access to the state, so this would only apply if the merge pipeline changes."
	^ aFD