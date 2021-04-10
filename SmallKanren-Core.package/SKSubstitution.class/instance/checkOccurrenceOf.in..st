occurring
checkOccurrenceOf: aVar in: aTerm
	<type: #SKVar type: #ObjectC returns: #(OrC SKSubstitution SKFailure)>
	"Only called by Cons to potentially fail early during an occurs check before continuing to check tail."
	^ aTerm skOccurs: aVar in: self