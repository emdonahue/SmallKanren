running
next
	
	| next |
	next := self step.
	[ next isIncomplete ] whileTrue: [ next := next step ].
	^ next.