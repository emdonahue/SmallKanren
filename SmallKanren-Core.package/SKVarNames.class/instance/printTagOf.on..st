printing
printTagOf: aVar on: aStream
	aStream nextPut: $<.
	aVar printTagOn: aStream.
	(self indexOf: aVar) printOn: aStream.
	aStream nextPut: $>.