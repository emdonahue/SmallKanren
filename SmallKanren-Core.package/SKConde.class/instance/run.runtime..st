running
run: aState runtime: aRuntime
	^ clauses inject: SKStream failure into: 
		[ :m :c | (c asGoal run: aState runtime: aRuntime) fairPlus: m ].