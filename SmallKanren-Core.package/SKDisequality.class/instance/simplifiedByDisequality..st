simplifying
simplifiedByDisequality: aDisequality
	"We are simplified when aDisequality is less specific than we are (contains a subset of our disequalities). In that case aDisequality strictly subsumes self and we return satisfied." 
	^ (aDisequality subsumes: self) ifTrue: SKConstraint satisfied ifFalse: self.