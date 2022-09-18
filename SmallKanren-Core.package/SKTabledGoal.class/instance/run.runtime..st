running
run: aState runtime: aRunner
	"hack"
	"May suspend in a bind on a scheduled state, but eventually returns to tabledRun on this goal."
	<type: #SKPackage type: #SKRuntime type: #isStream>
	<todo>
	"inputs should reify here to become ground keys for cache"
	"(self copy inputs: (inputs add: (aState reify: outputs third)))"
	^ aState delayedBind: self runtime: aRunner.