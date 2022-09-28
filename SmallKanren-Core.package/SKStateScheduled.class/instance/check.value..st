constraining
check: aVar value: aValue

	"prioritize no longer works here due to optimistic unification"

	"After successful unification, fire any newly ground scheduled fresh goals."

	<todo>
	<type: #VoidC type: #SKVar type: #( OrC SKPackage SKFailure )>
	^ (super check: aVar value: aValue) prioritize: aVar schedule: aValue