as yet unclassified
runSchedule: aState
	| g |
	g := (block valueWithArguments: (block argumentNames collect: [ :n | SKVar tag: n ])) asGoal.
	^ g run: aState runtime: nil.