merging
merge: aFreshClause
	"^ SKGuardedMultiFresh first: self rest: aFreshClause."
	^ SKGuardedDisjunction var: var pattern: aFreshClause pattern clauses: (aFreshClause clauses copyWith: self).