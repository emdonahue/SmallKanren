running
run: aState
	<type: #isState type: #(OrC isState SKFailure)>
	"Actually executes the unification wrt a substitution."
	^ aState unify: left with: right.