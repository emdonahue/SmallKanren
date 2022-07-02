running
runStates
	^ (Cons
		generate: [
			self unsafeStep.
			self peek ]
		from: [ self peek ]
		upTo: [ self sync atEnd ]) forced.