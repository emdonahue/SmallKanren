presento
presento: aTerm in: aCons
	"Called when we need to traverse aCons because it is not simply equal to aTerm."
	(aCons isCons and: [ aCons isNotEmpty ]) ifFalse: [ ^ aCons presento: aTerm ].
	^ (aCons car presento: aTerm) presento: aTerm in: aCons cdr.