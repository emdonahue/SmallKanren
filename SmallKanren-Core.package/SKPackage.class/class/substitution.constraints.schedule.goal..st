as yet unclassified
substitution: aSubstitution constraints: aStore schedule: aSchedule goal: aGoal
	| s |
	aGoal ifFail: [ ^ SKStream failure ].
	s := (aSchedule isEmpty & aGoal isSucceed) ifTrue: [ SKState new ] ifFalse: [ SKStateScheduled new schedule: aSchedule; goal: aGoal ].
	^ s substitution: aSubstitution; constraints: aStore.