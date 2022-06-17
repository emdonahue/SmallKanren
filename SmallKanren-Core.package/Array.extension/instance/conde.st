*SmallKanren-Core
conde
	^ self reverse reduce: [ :a :b | b asGoal | a asGoal ].