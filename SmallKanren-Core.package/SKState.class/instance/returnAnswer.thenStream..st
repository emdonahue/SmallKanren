as yet unclassified
returnAnswer: anAnswer thenStream: aStream
	^ SKCompleteStream new
		first: anAnswer;
		rest: aStream