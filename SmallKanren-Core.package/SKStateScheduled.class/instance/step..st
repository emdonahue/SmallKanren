streaming
step: aRuntime
	goal ifSucceed: [ 
	^ (schedule first scheduledRun: (self setSchedule: schedule rest) runtime: aRuntime) runGoal: aRuntime ].
	^ self runGoal: aRuntime.