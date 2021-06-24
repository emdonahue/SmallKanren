streaming
step: aRuntime
	goal ifSucceed: [ 
	^ (schedule first scheduledStep: self runtime: aRuntime) runGoal: aRuntime ].
	^ self runGoal: aRuntime.