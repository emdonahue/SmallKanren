as yet unclassified
first: aState rest: aStream
	<type: #SKState type: #(NotC SKFailure) returns: #SKComplete>
	^ self new left: aState; right: aStream.