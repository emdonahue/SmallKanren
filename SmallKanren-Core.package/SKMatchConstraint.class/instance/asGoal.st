converting
asGoal
	<todo>
	"if matchgoal pre-computes its constraint, we could easily transition back and forth without copying all the values"
	^ SKMatchGoal new block: block; var: delayedVar; vars: matchVars; pattern: pattern 