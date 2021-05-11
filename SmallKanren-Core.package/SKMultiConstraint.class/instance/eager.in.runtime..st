laziness
eager: aVar in: aState runtime: aRuntime
	| s |
	s := self check: self unificationTerm extendNoOccurs: aVar in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ self eager: aVar val: self unificationTerm in: s runtime: aRuntime.