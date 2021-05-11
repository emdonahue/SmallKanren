constraining
check: aValue extend: aVar runtime: aRuntime
	<type: #SKVar type: #ObjectC returns: #(OrC SKState SKFailure)>
	"Called by external ground terms during unification once they have decided unification was successful and that we should proceed with constraint satisfaction."
	"^ (self check: aVar against: aValue runtime: aRuntime) extend: aVar with: aValue."
	^ constraints check: aValue extend: aVar in: self runtime: aRuntime.