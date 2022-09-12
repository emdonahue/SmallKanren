checking
fire: aVal in: aState
	<todo> "confirm that check:in: is the right state api"	
	| t |
	t := term isSKVar ifTrue: [ aVal ] ifFalse: [ term ]. "If suspended on a var, aVal is the new root term."
	t isSKTerm ifFalse: [ ^ aState observe: t from: distribution ]. "If term was (constant when goal constructed) or is (var replaced with val) a non cons, observe it."
	index ifNotNil: [ t := t atT: index put: aVal ]. "If we know term needs var replacements, make them."
	(t findT: [ :x | x isSKVar ])
				ifNil: [ ^ aState observe: t from: distribution ] "Fully ground cons: observe it."
				ifNotNil: [ :i | ^ (self copy term: t; index: i) check: (aState walk: (t atT: i)) in: aState ]. "Suspend with a new index to replace."