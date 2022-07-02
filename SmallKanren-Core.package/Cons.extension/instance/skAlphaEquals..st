*SmallKanren-Core
skAlphaEquals: aTerm
	<todo>
	"can be optimized for already forced pairs"
	aTerm isCons ifFalse: [ ^ false ].
	^ self ifEmpty: [ aTerm isEmpty ] ifNotEmpty: [ :xs | aTerm ifEmpty: false ifNotEmpty: [ :ys | (xs car skAlphaEquals: ys car) and: [ xs cdr skAlphaEquals: ys cdr ] ] ]