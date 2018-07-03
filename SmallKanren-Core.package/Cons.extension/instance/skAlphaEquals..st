*SmallKanren-Core
skAlphaEquals: aTerm
	<todo>
	"can be optimized for already forced pairs"
	aTerm isCons ifFalse: [ ^ false ].
	^ self ifEmpty: [ aTerm isEmpty ] ifNotEmpty: [ :xs | (xs peek skAlphaEquals: aTerm car) and: [ xs step skAlphaEquals: aTerm cdr ] ]