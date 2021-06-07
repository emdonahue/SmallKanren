streaming
step: aRuntime
	goal ifSucceed: [ ^ (schedule first scheduledRun: (self setSchedule: schedule rest) runtime: aRuntime) ].
	^ goal run: (self removeGoal) runtime: aRuntime.