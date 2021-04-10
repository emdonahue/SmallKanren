*SmallKanren-Core
skOccurs: aVar in: aSubstitution
	<type: #SKVar type: #SKSubstitution returns: #(OrC SKSubstitution SKFailure)>
	"Returns the substitution or a failure depending on whether aVar occurs in this list as part of the occurs check."
	^ self ifEmpty: aSubstitution ifNotEmpty: [ :s | 
		(s peek skOccurs: aVar in: aSubstitution) "Check if aVar occurs in the car,"
			checkOccurrenceOf: aVar in: s step ] "and potentially return early if that fails before checking tail."