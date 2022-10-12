constraining
check: aVar value: aValue
	"Check a unified value against constraints on its variable."
	^ (self constraintAt: aVar) check: aVar value: aValue in: self