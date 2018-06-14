reification
reify: aTerm
	aTerm isSKVar ifTrue: [ ^ termDict at: aTerm ifAbsentPut: [ SKVar new ] ].
	^ aTerm skReify: self