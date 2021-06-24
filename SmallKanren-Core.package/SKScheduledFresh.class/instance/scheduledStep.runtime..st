as yet unclassified
scheduledStep: aState runtime: aRuntime

	^ self scheduledRun: (aState setSchedule: aState schedule rest) runtime: aRuntime