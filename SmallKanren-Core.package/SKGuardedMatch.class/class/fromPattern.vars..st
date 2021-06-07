instance creation
fromPattern: aPattern vars: varDict
	<todo> "Better error checking for invalid patterns."
	| h t |
	aPattern ifEmpty: [ ^ Cons empty ].
	h := t := (self fromPatternElement: aPattern first vars: varDict) cons.
	aPattern allButFirstDo: [ :p | 
		(#(| .) includes: p) ifTrue: [ t cdr: (self fromPatternElement: aPattern last vars: varDict). ^ h ].
		t cdr: (self fromPatternElement: p vars: varDict) cons.
		t := t cdr ].
	^ h.