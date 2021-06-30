as yet unclassified
expandBlock: aBlock withVars: someVars
	| names |
	names := aBlock argumentNames.
	^ (aBlock valueWithArguments: 
		(someVars, (((someVars size + 1) to: aBlock argumentCount) 
				collect: [ :i | SKTaggedVar tag: (names at: i) ]))) asGoal.