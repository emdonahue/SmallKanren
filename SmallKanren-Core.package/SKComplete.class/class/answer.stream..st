as yet unclassified
answer: aState stream: aStream
	<type: #SKState type: #(NotC SKFailure) returns: #SKComplete>
	^ self new left: aState; right: aStream.