as yet unclassified
summand: aSummand sum: aSum 
	"If both terms are already ground, this reduces to unification."
	aSummand isSKVar | aSum isSKVar ifFalse: [ ^ SKUnificationConstraint unification: aSum - aSummand ].
	^ self new summand: aSummand; sum: aSum.