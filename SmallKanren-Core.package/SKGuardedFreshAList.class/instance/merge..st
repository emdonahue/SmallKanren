as yet unclassified
merge: aFreshClause
	| p |
	p := aFreshClause pattern.
	p car isSKVar ifTrue: [ ^ SKGuardedFreshPatternedDisjoined var: var pattern: ((SKVar new cons: SKVar new) cons: p cdr) clauses: (aFreshClause clauses copyWith: self) ].
	p isCons ifTrue: [ 
		^ p ifEmpty: SKStream failure ifNotEmpty: [ :p2 | SKGuardedFreshPatternedDisjoined var: var pattern: p clauses: (aFreshClause clauses copyWith: self) ]].
	^ SKStream failure.