running
run: aState runtime: aRuntime
	<type: #SKPackage type: #SKRuntime returns: #SKRuntime>
	"Actually executes the unification wrt aState."
	^ aState unify: left with: right runtime: aRuntime.