as yet unclassified
streams: myStreams mplus: aStream
	myStreams ifEmpty: [ ^ aStream ].
	^ aStream fairPlus: (self new streams: myStreams).