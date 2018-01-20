delaying
suspendVar: aDelay
	self assert: [ suspendedVars allSatisfy: [ :kv | kv car = kv cdr var ] ].
	^ SKDelayed new
		state: state;
		suspendedVars:
			(suspendedVars
				detect: [ :kv | kv car = aDelay var ]
				ifFound: [ :kv | (suspendedVars remove: [ :v | v = kv ]) add: (kv car cons: (kv cdr conjoin: aDelay)) ]
				ifNone: [ suspendedVars add: (aDelay var cons: aDelay) ])