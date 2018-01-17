cdrcarin
testCheckInComplete
	| g s |
	g := (x carCdrIn2: [ :a :d | SKGoal succeed | SKGoal succeed ]) & (x carCdrIn2: [ :a :d | SKGoal succeed | SKGoal succeed ]).
	s := g run: SKState new.
	self assert: s isDelayed.
	self deny: s step isDelayed