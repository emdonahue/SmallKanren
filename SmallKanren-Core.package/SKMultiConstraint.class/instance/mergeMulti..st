merging
mergeMulti: aMulti
	<todo> "make sure multis arent rerunning their constraints on their other constraints when appending them all to a new multi. for each link, simplify single, simplify the other multi, pass simplified multi to rest of links, append on way back if changed."
	"aMulti is the main constraint in this relation. Self should be destructured and appended."
	| m |
	m := first merge: aMulti.
	m isSatisfied | m isUnsatisfiable ifTrue: [ ^ m ].
	^ m merge: self rest.