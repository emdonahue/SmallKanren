scheduling
advanceSchedule
	| sch s |
	sch := schedule car.
	s := self copy schedule: (schedule cdr).
	^ sch runSchedule: s.