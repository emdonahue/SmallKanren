running
run: aState name: aName rnn: aModel vars: someVars
	^ (block valueWithArguments: someVars) asGoal incomplete: aState history: aName heuristic: aModel