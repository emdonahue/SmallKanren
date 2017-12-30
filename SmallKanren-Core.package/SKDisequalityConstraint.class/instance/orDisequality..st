checking
orDisequality: aDisequality
	"Builds up Disequalities into a DisjoinedDisequality."
	^ SKDisjoinedDisequalities new
		constraint: aDisequality;
		next: self