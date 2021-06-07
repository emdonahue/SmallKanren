constraining
check: aValue extend: aVar runtime: aRuntime
	<type: #SKVar type: #ObjectC returns: #(OrC SKPackage SKFailure)>
	"After successful unification, fire any newly ground scheduled fresh goals."
	^ (super check: aValue extend: aVar runtime: aRuntime) prioritize: aVar schedule: aValue.