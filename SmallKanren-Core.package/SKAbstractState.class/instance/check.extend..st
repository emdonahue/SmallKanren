constraintstore
check: aValue extend: aVar
	"Checks constraints on aVar and extends the substitution with aValue if constraints pass."
	^ self constraintstore check: aVar extend: aValue in: self