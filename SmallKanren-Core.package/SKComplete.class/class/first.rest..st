as yet unclassified
first: aState rest: aStream
	<type: #isState type: #(NotC SKFailure) type: #SKComplete>
	^ self new left: aState; right: aStream.