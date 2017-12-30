running
runAll
	^ self
		inject: OrderedCollection new
		into: [ :oc :s | 
			oc
				add: s;
				yourself ]