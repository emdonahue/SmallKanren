debugging
subsumes: aDisequality
	"We subsume/are more general than aDisequality iff it contains all of our sub constraints. In that case, it is redundant. Equivalently, all of our sub constraints subsume aDisequality"
	^ (first subsumes: aDisequality) and: [ rest subsumes: aDisequality ].