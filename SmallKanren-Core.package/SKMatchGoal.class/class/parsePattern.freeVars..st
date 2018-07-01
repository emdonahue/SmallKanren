instance creation
parsePattern: aPattern freeVars: freeVars
	"Could be built statefully to avoid reverse."

	<todo>
	| parsed |
	parsed := Cons empty.
	aPattern
		doWithIndex: [ :x :i | 
			x = #'.'
				ifTrue: [ | cdr |
					cdr := aPattern at: i + 1.
					^ parsed
						inject:
							(cdr = #?
								ifTrue: [ freeVars add: SKVar new ]
								ifFalse: cdr)
						into: [ :d :a | a cons: d ] ].
			parsed := x = #?
				ifTrue: [ (freeVars add: SKVar new) cons: parsed ]
				ifFalse: [ x isArray
						ifTrue: [ (self parsePattern: x freeVars: freeVars) cons: parsed ]
						ifFalse: [ x cons: parsed ] ] ].
	^ parsed reversed.