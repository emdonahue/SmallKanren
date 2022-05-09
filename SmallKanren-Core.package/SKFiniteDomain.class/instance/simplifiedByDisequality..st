simplifying
simplifiedByDisequality: aDisequality
	<todo> "Ensure that AND disequalities dont prematurely cancel elements of a FD unless all constraints hold. Eg, FD x in 1 2 3, if x=/=1 AND y=/=2, we can't cancel x."
	^ super simplifiedByDisequality: aDisequality.
	"^ aDisequality simplifyFiniteDomain: self."