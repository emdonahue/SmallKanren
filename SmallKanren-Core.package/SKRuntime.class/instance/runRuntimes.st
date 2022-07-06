running
runRuntimes
	^ (Cons
		generate: [ :r |
			r next ]
		from: [ self next ]
		upTo: [ :r | r atEnd ]) forced.