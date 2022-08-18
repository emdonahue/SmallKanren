checking
fire: aVal in: aState
	<todo> "confirm that run: is the right state api"	
	| t |
	t := term isSKVar ifTrue: [ aVal ] ifFalse: [ term ].
	t isSKTerm ifFalse: [ ^ aState observe: t from: distribution ].
	index ifNotNil: [ t := t atT: index put: aVal ].
	(t findT: [ :x | x isSKVar ])
				ifNil: [ ^ aState observe: t from: distribution ] "Fully ground cons."
				ifNotNil: [ :i | ^ (self copy term: t; index: i) check: (aState walk: (t atT: i)) in: aState ].
				
	[index 
		ifNil: [ "First fire, bound to var."
			aVal isSKTerm ifFalse: [ ^ aState observe: aVal from: distribution ]. "Not a complex term."
			(aVal findT: [ :x | x isSKVar ]) 
				ifNil: [ ^ aState observe: aVal from: distribution ] "Fully ground cons."
				ifNotNil: [ :i | ^ (self copy term: aVal; index: i) check: (aVal atT: i) in: aState ].
			]
		ifNotNil: [ | t2 |
			t := term atT: index put: aVal.
			(t findT: [ :x | x isSKVar ])
				ifNil: [ ^ aState observe: t from: distribution ] "Fully ground cons."
				ifNotNil: [ :i | ^ (self copy term: t; index: i) check: (t atT: i) in: aState ]].].