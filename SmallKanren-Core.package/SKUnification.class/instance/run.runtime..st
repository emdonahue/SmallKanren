running
run: aState runtime: aRuntime
	<type: #SKPackage type: #SKRuntime type: #(OrC isState SKFailure)>
	"Actually executes the unification wrt aState."
	^ aState unify: left with: right.