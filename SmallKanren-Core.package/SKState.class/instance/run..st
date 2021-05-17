scheduling
run: aRuntime
	| sch s |
	sch := schedule first.
	s := self copy schedule: (schedule rest).
	^ sch isCons ifTrue: [ sch cdr eager: sch car in: s runtime: aRuntime ] ifFalse: [ sch run: s runtime: aRuntime ].