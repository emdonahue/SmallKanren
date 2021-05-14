scheduling
advanceSchedule
	| sch s |
	sch := schedule first.
	s := self copy schedule: (schedule removeFirst).
	^ sch runSchedule: s.