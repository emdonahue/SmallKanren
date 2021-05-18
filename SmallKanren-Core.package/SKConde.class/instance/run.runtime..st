running
run: aState runtime: aRuntime
	^ clauses inject: SKStream failure into: 
		[ :m :c | (c run: aState runtime: aRuntime) fairPlus: m ].