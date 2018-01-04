streaming
bind: aGoal
	"Goals bound to packages should immediately run themselves, as they will perform a finite amount of comutation."

	"can this loop forever via dfs in delay?"

	<todo>
	<type: #SKGoal returns: #SKStream>
	^ aGoal run: self