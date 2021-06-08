scheduling
prioritizeVar: oldVar schedule: newVar
	"Find the scheduled fresh matching aVar, remove it, expand it with aValue, and add it to the goal to be executed at the end of this expansion step."
	^ self class substitution: substitution constraints: constraints
		schedule: (schedule replace: [ :f | f varEquals: oldVar ] 
			ifFound: [ :f | f reassignVar: newVar ]
			ifNone: [ ^ self ])
		goal: goal.