running
runRuntimes
	^ (Cons
		generate: [
			self next ]
		from: [ self next ]
		upTo: [ self atEnd ]) forced.