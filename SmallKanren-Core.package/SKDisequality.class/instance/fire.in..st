checking
fire: aVal in: aState
	<todo> "If the paired var was free, it will have a symmetric constraint that we can simplify by replacing it with a constraint on aVal, which is now unified to its paired var. Subclass single and give it optional 'previously bound var' info it can use to simplify the foreign DE."
	"Unify all the constraints within the state's substitution and generate a disequality constraint from the result."
	^ (self disunify: aVal in: aState substitution) addDisequalities: aState.