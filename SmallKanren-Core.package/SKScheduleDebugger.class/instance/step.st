stepping
step
	^ SKStreamDebugger stream: (schedule scheduledRun: (state removeSchedule: schedule) runtime: runtime) runtime: runtime.