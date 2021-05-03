unifying
unify: a noWalk: b
	<todo> "Consider performance testing a simultaneous walk for two vars."
	"Even though fully ground unifications are preemptively simplified and so don't make it to this point in unification, two vars can, when walked, yield two ground values, so all combinatios of terms are possible in this unifier."

	a == b ifTrue: [ ^ self ].	"Prevent free vars from self-unifying."
	^ a skUnify: b in: self. "Call out to the polymorphic unifiers."