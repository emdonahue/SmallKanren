running
runStatesForced
	| run |
	run := nil.
	run := [ 
		self sync atEnd ifTrue: Cons empty
			ifFalse: [ self peek cons: (run cull: self unsafeStep) ]
		].
	^ run value.