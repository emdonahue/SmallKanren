unifying
unify: a noWalk: b
	"Like unification but both left and right have already been walked."
	a == b ifTrue: [ ^ self ].	"Prevent free vars from unifying with self."
	^ a skUnify: b in: self runtime: nil.