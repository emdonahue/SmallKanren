scheduling
scheduledRun: aState runtime: aRuntime
	^ ((block valueWithArguments: 
		(block argumentNames collect: [ :n | SKVar tag: n ])) asGoal) 
			run: aState runtime: aRuntime.