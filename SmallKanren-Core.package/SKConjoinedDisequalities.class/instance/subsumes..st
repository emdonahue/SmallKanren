debugging
subsumes: aDisequality
	"True if all disequalities in this constraint are present in other constraint."
	^ (aDisequality not: left equals: right) & (rest subsumes: aDisequality).