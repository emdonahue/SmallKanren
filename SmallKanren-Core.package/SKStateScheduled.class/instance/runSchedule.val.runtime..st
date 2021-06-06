scheduling
runSchedule: aVar val: aVal runtime: aRuntime
	<todo> "remove all in one go"
	| s st |
	s := schedule detect: [ :f | f varEquals: aVar ] ifNone: [ ^ self ].
	st := self removeSchedule: s.
	