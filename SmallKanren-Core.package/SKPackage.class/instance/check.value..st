constraining
check: aVar value: aValue

	"Called by external ground terms during unification once they have decided unification was successful and that we should proceed with constraint satisfaction."

	<type: #( NotC SKVar ) type: #SKVar type:
	#( OrC SKPackage SKFailure )>
	^ constraints check: aVar value: aValue in: self