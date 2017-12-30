printing
printOn: aStream index: anInteger names: aCollection
	(block sourceNode formattedCode findTokens: Character cr asString)
		do: [ :s | aStream nextPutAll: s ]
		separatedBy: [ aStream cr.
			anInteger +1 timesRepeat: [ aStream nextPut: Character tab ] ]