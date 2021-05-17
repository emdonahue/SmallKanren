scheduling
advanceSchedule
	| sch s |
	sch := schedule first.
	s := self copy schedule: (schedule rest).
	^ sch isCons ifTrue: [ sch cdr eager: sch car in: s runtime: nil ] ifFalse: [ sch runSchedule: s ].