eval
eval: prog
	^ [ :out | self eval: prog o: out ] asGoal run first first