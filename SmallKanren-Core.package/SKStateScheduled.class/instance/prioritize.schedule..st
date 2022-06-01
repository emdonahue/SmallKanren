scheduling
prioritize: aVar schedule: aValue
	"Find the scheduled fresh matching aVar, remove it, expand it with aValue, and add it to the goal to be executed at the end of this expansion step."
	| sch g |
	g := goal.
	sch := schedule collect: [ :f | f removeVar: {aVar} ]
		thenSelect: [ :f | f isFullyGround 
			ifTrue: [ g := g & f getGoal. false ] ifFalse: true ].
	"sch := schedule remove: [ :f | f includesVar: aVar ] 
		ifPresent: [ :f | g := ((f groundGoal: aValue) & goal) ifFail: [ ^ SKStream failure ] ] 
		ifAbsent: [ ^ self ]."
	^ self class substitution: substitution constraints: constraints schedule: sch jointDistribution: pseudocounts goal: g.
	