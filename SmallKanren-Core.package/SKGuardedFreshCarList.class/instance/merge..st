as yet unclassified
merge: aFreshClause
	(aFreshClause unifiesCar: car) ifFalse: [ ^ SKStream failure ].
	(aFreshClause unifiesSize: size) ifFalse: [ ^ SKStream failure ].
	^ SKGuardedMultiFresh first: self rest: aFreshClause.