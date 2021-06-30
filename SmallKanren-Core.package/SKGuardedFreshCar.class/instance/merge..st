merging
merge: aFreshClause
	| p |
	p := aFreshClause pattern.
	p car isSKVar ifTrue: [ ^ SKGuardedDisjunction var: externals pattern: (car cons: p cdr) clauses: (aFreshClause clauses copyWith: self) ].
	p car = car ifTrue: [ ^ SKGuardedDisjunction var: externals pattern: p clauses: (aFreshClause clauses copyWith: self) ].
	^ SKStream failure.