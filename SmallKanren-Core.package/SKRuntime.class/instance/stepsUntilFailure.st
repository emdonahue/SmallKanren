debugging
stepsUntilFailure
	| steps r |
	steps := 0.
	r := self copy.
	[ r atEnd ]
		whileFalse: [ r := r step.
			steps := steps + 1 ].
	^ steps.