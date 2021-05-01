subclassresponsibility
step: runner
	"Each step, an incomplete stream generates fresh variables for each argument in the block, executes its block, and continues the incomplete computation until each branch terminates in an answer or another fresh/incomplete."

	| vars |
	
	vars := (1 to: block argumentCount) collect: [ :_ | SKVar new ].
	^ (block valueWithArguments: vars) asGoal run: state runtime: runner