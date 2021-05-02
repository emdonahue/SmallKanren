checking
fire: aValue in: aState
	<type: #(NotC SKVar) type: #SKState returns: #(OrC SKState SKFailure)>
	"Confirm that the value is of the correct type."
	^ (self isOfType: aValue)
		ifTrue: aState
		ifFalse: SKStream failure.