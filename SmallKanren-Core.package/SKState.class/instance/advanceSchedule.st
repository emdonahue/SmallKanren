scheduling
advanceSchedule
	| sch s |
	sch := schedule car.
	s := self copy schedule: (schedule cdr).
	^ sch isCons ifTrue: [ sch cdr eager: sch car in: s runtime: nil ] ifFalse: [ sch runSchedule: s ].