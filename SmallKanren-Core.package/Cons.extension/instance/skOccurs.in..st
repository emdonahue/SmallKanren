*SmallKanren-Core
skOccurs: aVar in: aSubstitution
	<type: #SKVar type: #SKSubstitution type: #(OrC SKSubstitution SKFailure)>
	"Returns the substitution or a failure depending on whether aVar occurs in this list as part of the occurs check."
	^ self ifEmpty: aSubstitution ifNotEmpty: [ :s | 
		(s car skOccurs: aVar in: aSubstitution) "Check if aVar occurs in the car,"
			checkOccurrenceOf: aVar in: s cdr ] "and potentially return early if that fails before checking tail."