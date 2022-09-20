checking
fire: aVal in: aState
	"Unify all the constraints within the state's substitution and generate a disequality constraint from the result."
	^ (self disunify: aVal in: aState substitution asDisequalitySubstitution) addDisequalities: aState.