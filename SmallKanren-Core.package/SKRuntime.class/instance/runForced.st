running
runForced
	| run |
	run := nil.
	run := [ 
		self sync atEnd ifTrue: Cons empty
			ifFalse: [ (self peek reify: queryVars) cons: (run cull: self unsafeStep) ]
		].
	^ run value.