merging
mergeMulti: aMulti
	"aMulti is the main constraint in this relation. Self should be destructured and appended."
	| m |
	m := first merge2: aMulti.
	m isSatisfied | m isUnsatisfiable ifTrue: [ ^ m ].
	^ m merge2: self rest.