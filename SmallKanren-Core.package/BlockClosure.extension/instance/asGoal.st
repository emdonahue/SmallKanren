*SmallKanren-Core
asGoal
	| queryVars |
	queryVars := (self argumentNames collect: [ :a | SKVar tag: a ]) asCons.
	^ SKStartGoal new goal: (self valueWithArguments: queryVars); vars: queryVars