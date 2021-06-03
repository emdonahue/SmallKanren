merging
merge: aFreshClause
	"^ SKGuardedMultiFresh first: self rest: aFreshClause."
	^ SKGuardedFreshPatternedDisjoined var: var pattern: aFreshClause pattern clauses: (aFreshClause clauses copyWith: self).