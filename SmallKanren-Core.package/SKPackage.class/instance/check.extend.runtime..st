constraining
check: aValue extend: aVar runtime: aRuntime
	<type: #SKVar type: #ObjectC returns: #(OrC SKPackage SKFailure)>
	"Called by external ground terms during unification once they have decided unification was successful and that we should proceed with constraint satisfaction."
	^ constraints check: aValue extend: aVar in: self runtime: aRuntime.