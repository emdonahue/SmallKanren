checking
fire: aValue in: aState
	<type: #(NotC SKVar) type: #isState type: #isStateOrFailure>
	"Confirm that the value is of the correct type."
	^ (self isOfType: aValue)
		ifTrue: aState
		ifFalse: SKStream failure.