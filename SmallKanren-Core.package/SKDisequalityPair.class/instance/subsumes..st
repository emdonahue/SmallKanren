debugging
subsumes: aDisequality
	"We subsume a disequality when it contains our one disequal pair."
	^ aDisequality not: left equals: right.