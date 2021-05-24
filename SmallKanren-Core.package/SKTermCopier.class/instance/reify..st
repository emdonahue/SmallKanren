reification
reify: aTerm
	"Uses the reifier polymorphically to copy terms."
	aTerm isSKVar ifTrue: [ ^ terms at: aTerm ifAbsentPut: [ aTerm copyTerm ] ].
	^ aTerm skReify: self.