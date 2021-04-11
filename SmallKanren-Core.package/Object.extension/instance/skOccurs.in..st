*SmallKanren-Core
skOccurs: aVar in: aSubstitution
	"A var can't occur in a ground term, so return the substitution, signalling success."
	^ aSubstitution 