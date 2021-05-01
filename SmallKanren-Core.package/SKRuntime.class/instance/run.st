running
run
	^ Cons
		generate: [ | peek |
			peek := self peek reify: queryVars.
			self unsafeStep.
			peek ]
		until: [ self sync atEnd ]