constraining
check: aValue extend: aVar

	"prioritize no longer works here due to optimistic unification"

	"After successful unification, fire any newly ground scheduled fresh goals."

	<todo>
	<type: #VoidC type: #SKVar type:
	#( OrC SKPackage SKFailure )>
	^ (super check: aValue extend: aVar)
		  prioritize: aVar
		  schedule: aValue