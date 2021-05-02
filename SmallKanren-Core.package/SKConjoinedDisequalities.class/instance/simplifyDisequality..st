simplifying
simplifyDisequality: aDisequality
	"We simplify aDisequality when it contains all of our disequalities and so we are strictly more general. In that case return satisfied. Otherwise leave it alone."
	^ (aDisequality not: left equals: right) 
		ifTrue: [ self rest simplifyDisequality: aDisequality ] 
		ifFalse: aDisequality.