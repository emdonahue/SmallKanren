as yet unclassified
substitution: aSubstitution constraints: aStore schedule: aSchedule jointDistribution: aJointDistribution goal: aGoal
	| s |
	aGoal ifFail: [ ^ SKStream failure ].
	s := (aSchedule isEmpty & aGoal isSucceed) ifTrue: [ SKSubstitution new ] ifFalse: [ SKStateScheduled new schedule: aSchedule; goal: aGoal ].
	^ s substitution: aSubstitution; constraints: aStore; pseudoCounts: aJointDistribution.