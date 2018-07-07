*SmallKanren-Core
skAlphaEquals: aTerm
	<todo>
	"can be optimized for already forced pairs"
	aTerm isCons ifFalse: [ ^ false ].
	^ self ifEmpty: [ aTerm isEmpty ] ifNotEmpty: [ :xs | aTerm ifEmpty: false ifNotEmpty: [ :ys | (xs peek skAlphaEquals: ys car) and: [ xs step skAlphaEquals: ys cdr ] ] ]