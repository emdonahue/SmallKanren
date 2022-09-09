eval
eval: prog
	^ [ :out | self eval: prog o: out ] asGoal runList first first