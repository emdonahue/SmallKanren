merging
merge: aFreshClause
	(aFreshClause unifiesCar: car) ifFalse: [ ^ SKStream failure ].
	^ SKGuardedMultiFresh first: self rest: aFreshClause.