merging
merge: aFreshClause
	| p |
	p := aFreshClause pattern.
	p car isSKVar ifTrue: [ ^ SKGuardedDisjunction var: var pattern: (car cons: p cdr) clauses: (aFreshClause clauses copyWith: self) ].
	p car = car ifTrue: [ ^ SKGuardedDisjunction var: var pattern: p clauses: (aFreshClause clauses copyWith: self) ].
	^ SKStream failure.