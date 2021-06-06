as yet unclassified
expandBlockWithVars: someVars
	| names |
	names := block argumentNames.
	^ (block valueWithArguments: 
		(someVars, (((someVars size + 1) to: block argumentCount) 
				collect: [ :i | SKTaggedVar tag: (names at: i) ]))) asGoal.