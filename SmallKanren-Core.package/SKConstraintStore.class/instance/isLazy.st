testing
isLazy
	hashmap valuesDo: [ :c | c isLazy ifTrue: [ ^ true ] ].
	^ false.