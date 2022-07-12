streaming
stepFixedPoint: aRuntime
	| l r |
	l := left stepFixedPoint: aRuntime.
	self haltIf: [ l isKindOf: SKRuntime ].
	l asStream == left ifTrue: [ 
		r := right stepFixedPoint: aRuntime.
		].
	^ right + (left step: aRuntime).