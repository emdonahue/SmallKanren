checking
fire: aValue in: aState
	<type: #(NotC SKVar) type: #SKPackage type: #(OrC SKPackage SKFailure)>
	"Confirm that the value is of the correct type."
	^ (self isOfType: aValue)
		ifTrue: aState
		ifFalse: SKStream failure.