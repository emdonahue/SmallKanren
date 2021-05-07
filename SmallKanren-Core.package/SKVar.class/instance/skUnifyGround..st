unifying
skUnifyGround: aVal
	"Called by primitives (non Cons grounds) to perform the basic unification. Short circuits if both terms primitive, otherwise as here defaults to normal unification."
	^ self === aVal