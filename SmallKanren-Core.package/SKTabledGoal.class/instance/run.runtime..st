running
run: aState runtime: aRunner
	"hack"

	<type: #SKPackage type: #SKRuntime returns: #SKStream>
	<todo>
	"inputs should reify here to become ground keys for cache"
	"(self copy inputs: (inputs add: (aState reify: outputs third)))"
	^ aState tabledBind: self runner: aRunner.