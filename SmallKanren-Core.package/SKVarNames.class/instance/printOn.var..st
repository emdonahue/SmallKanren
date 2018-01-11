printing
printOn: aStream var: aVar
	"refactor with printtagon"

	<todo>
	"(self indexOf: aVar)"
	aStream nextPut: $<.
	aVar printTagOn: aStream.
	aVar hash printOn: aStream.
	aStream nextPut: $>.
	(state includes: aVar)
		ifTrue: [ aStream nextPut: $:.
			state => aVar skPrintOn: aStream names: self ]