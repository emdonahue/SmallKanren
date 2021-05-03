simplifying
simplifiedByType: aType
	"Absento implies either a cons pair or a raw value. If the type constraint allows a pair or the type of the term we are looking for, we can still fail. Otherwise, we are redundant as the term we are looking for will never be found in something that isn't a pair and is of the wrong type."
	^ self simplifiedBy: aType.