constraining
check: aValue extend: aVar

	"Called by external ground terms during unification once they have decided unification was successful and that we should proceed with constraint satisfaction."

	<type: #( NotC SKVar ) type: #SKVar type:
	#( OrC SKPackage SKFailure )>
	^ constraints check: aValue extend: aVar in: self