unifying
unify: a noWalk: b
	a == b ifTrue: [ ^ self ]. "Prevent free vars from self-unifying."
	^ a skUnify: b in: self "Call out to the polymorphic unifiers."