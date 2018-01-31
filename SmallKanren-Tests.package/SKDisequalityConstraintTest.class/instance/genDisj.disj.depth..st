running
genDisj: isPass disj: aDisj depth: aDepth
	| pass pass2 |
	pass := SKVar new.
	pass2 := SKVar new.
	^ aDisj
		carCdrIn: [ :ca :cd | 
			(self genConj: pass conj: ca depth: 2)
				&
					(aDepth isZero
						ifTrue: [ cd isEmptyo & (isPass === pass) ]
						ifFalse: [ (self genDisj: pass2 disj: cd depth: aDepth - 1) & (self ando: isPass ando: pass ando: pass2) ]) ]