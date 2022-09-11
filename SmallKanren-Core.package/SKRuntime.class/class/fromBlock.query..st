instance creation
fromBlock: topLevelGoal query: aQuery
	"Used by fresh to create the main runtime for a program."
	<type: #BlockClosure type: #Cons type: #SKRuntime>
	| r queryVariables |
	queryVariables := aQuery asCons.
	r := self new query: queryVariables.
	^ ([topLevelGoal valueWithArguments: queryVariables] asGoal run: SKState new runtime: r) runtime: r.