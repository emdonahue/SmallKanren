scheduling
scheduledGoal
	self schedule ifEmpty: [ ^ SKGoal fail ]. "Should not happen during normal runs, as the runtime will abort first. Mostly handles debug stepping."
	"If any goals have no dependencies, run them as top priority."
	(self schedule reject: #hasExternalDependencies) ifNotEmpty: [ :s | 
		^ s inject: SKGoal succeed into: [ :c :g | 
			(c isFailure ifTrue: [ ^ c ] ifFalse: [ c & g expandFresh ])  ] ].
	^ self schedule first expandFresh. "Otherwise pick whatever is next."