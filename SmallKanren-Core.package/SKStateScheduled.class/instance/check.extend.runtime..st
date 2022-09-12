constraining
check: aValue extend: aVar runtime: aRuntime
	<todo> "prioritize no longer works here due to optimistic unification"
	<type: #VoidC type: #SKVar type: #SKRuntime type: #(OrC SKPackage SKFailure)>
	"After successful unification, fire any newly ground scheduled fresh goals."
	^ (super check: aValue extend: aVar runtime: aRuntime) prioritize: aVar schedule: aValue.