running
runStates
	^ (Cons
		generate: [ | peek |
			peek := self peek.
			self unsafeStep.
			peek ]
		until: [ self sync atEnd ])