printing
printOn: aStream var: aVar
	"refactor with printtagon"
	<todo>
	aStream nextPut: $<.
	aVar printTagOn: aStream.
	(self indexOf: aVar) printOn: aStream.
	aStream nextPut: $>.
	(state includes: aVar)
		ifTrue: [ aStream nextPut: $:.
			state => aVar skPrintOn: aStream names: self ]