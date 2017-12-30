checking
disunify: aDisjoinedDisequality in: aSubstitution
	"This continues the disunification of aDisjoinedDisequality, and then appends self to the result. If the result is a failure, it will ignore the append."
	^ (aDisjoinedDisequality disunify: aSubstitution) orDisequality: self