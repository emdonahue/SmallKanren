generative
evalAtom: atom
	"Variables (symbols in the finite interpreter) should create new actual logic variables and store the mapping in the 'variables' dictionary. Any non variable symbol should be passed through transparently."

	(interpreter vars includes: atom)
		ifTrue: [ ^ variables at: atom ifAbsentPut: SKVar new ].
	atom isCons
		ifTrue: [ 
			
			^ atom ifNotEmpty: [ (self evalAtom: atom car) cons: (self evalAtom: atom cdr) ] ].
	^ atom