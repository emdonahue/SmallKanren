laziness
eager: aVar in: aState runtime: aRuntime
	"Called by the space tree to force any laziness before returning an answer. Since this is not part of the unifier, there is no value, and we must create a new value with fresh vars."
	^ self eager: aVar 
		val: ((SKVar tag: (block argumentNames at: 1)) cons:
			(SKVar tag: (block argumentNames at: 2)))
		in: (aState removeConstraint: aVar)
		runtime: aRuntime.