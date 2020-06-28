*SmallKanren-Core
asGoal
	"Arrays of goals are syntactic sugar for a conjunction of all the goals. A doubly nested array {{...}} is syntactic sugar for a disjunction."

	(self size = 1 and: [ self first isArray	 ])
		ifTrue: [ ^ self first inject: SKGoal fail into: [ :disj :g | disj | g ] ].
	^ self inject: SKGoal succeed into: [ :conj :g | conj & g asGoal ]