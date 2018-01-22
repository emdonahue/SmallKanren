printing
printOn: aStream index: anInteger names: someNames
	first printOn: aStream.
	aStream cr.
	rest printOn: aStream