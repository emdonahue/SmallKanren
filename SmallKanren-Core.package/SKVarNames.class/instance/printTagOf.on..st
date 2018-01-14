printing
printTagOf: aVar on: aStream
	aStream nextPut: $<.
	aVar printTagOn: aStream.
	aVar hash printOn: aStream.
	aStream nextPut: $>