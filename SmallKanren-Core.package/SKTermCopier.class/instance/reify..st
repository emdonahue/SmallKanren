reification
reify: aTerm
	aTerm isSKVar ifTrue: [ ^ termDict at: aTerm ifAbsentPut: [ SKVar new ] ].
	^ aTerm skReify: self. "No need to call self reify: since we already know it will reach this branch based on previous condition."