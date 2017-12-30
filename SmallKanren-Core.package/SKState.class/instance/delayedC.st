contracts
delayedC
	"An undelayed state should contain no delayed variables."

	constraints keysAndValuesDo: [ :var :const | const ifDelayed: [ ^ false ] ].
	^ true