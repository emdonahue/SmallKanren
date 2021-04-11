constraining
extend: aVar check: aValue
	<type: #SKVar type: #ObjectC returns: #(OrC SKState SKFailure)>
	"Called by external ground terms during unification once they have decided unification was successful and that we should proceed with constraint satisfaction."
	^ (self extend: aVar with: aValue) check: aVar against: aValue