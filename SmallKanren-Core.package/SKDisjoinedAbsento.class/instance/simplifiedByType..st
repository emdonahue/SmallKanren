simplifying
simplifiedByType: aType
	<todo> "Once this is typechecked by a non Cons, absento technically reduces to disequality, which may or may not check faster since it won't have to search lists. Benchmarks advised."
	"Absento implies either a cons pair or a raw value. Negating an absento requires implying the negation of both of those: neither pair nor the raw value."
	| r |
	r := next simplifiedByType: aType.
	aType isTypeCons not & (aType isOfType: excluded) not ifTrue: [ ^ r ]. 
	r == next ifFalse: [ ^ r absento: excluded ].