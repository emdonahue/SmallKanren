running
genConj: isPass conj: aConj depth: aDepth
	| pass pass2 |
	pass := SKVar new.
	pass2 := SKVar new.
	^ aConj
		carCdro: [ :ca :cd | 
			(self genSingle: pass const: ca)
				&
					(aDepth isZero
						ifTrue: [ cd isEmptyo & (isPass === pass) ]
						ifFalse: [ (self genConj: pass2 conj: cd depth: aDepth - 1) & (self oro: isPass oro: pass oro: pass2) ]) ]