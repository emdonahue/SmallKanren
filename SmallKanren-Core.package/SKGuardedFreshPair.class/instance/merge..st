merging
merge: aFreshClause
	"^ SKGuardedMultiFresh first: self rest: aFreshClause."
	^ SKGuardedDisjunction var: externals pattern: aFreshClause pattern clauses: (aFreshClause clauses copyWith: self).