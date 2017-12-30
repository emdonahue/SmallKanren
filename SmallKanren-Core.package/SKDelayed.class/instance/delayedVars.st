inspecting
delayedVars
	| vars |
	vars := OrderedCollection new.
	state constraints
		keysAndValuesDo: [ :v :c | 
			c isDelayed
				ifTrue: [ vars add: v -> c ] ].
	^ vars