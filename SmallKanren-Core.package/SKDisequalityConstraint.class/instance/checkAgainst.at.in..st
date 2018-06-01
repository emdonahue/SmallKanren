checking
checkAgainst: aValue at: aVar in: aState
	"Determine whether to reduceWithInitialValue based on which side aVar is on."
	<todo>
	"this should be able to reduce the other way as well"
	self first left = aVar
		ifFalse: [ ^ self checkIn: aState ].
	^ (self reduceWithInitialValue: aValue) checkIn: aState