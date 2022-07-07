instance creation
fromBlock: aBlock query: aQuery
	"Used by fresh to create the main runtime for a program."
	<type: #BlockClosure type: #Cons returns: #SKRuntime>
	| r |
	r := self new query: aQuery asCons.
	^ ([aBlock valueWithArguments: aQuery asCons] asGoal run: SKState new runtime: r) runtime: r.