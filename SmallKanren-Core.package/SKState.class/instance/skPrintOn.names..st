printing
skPrintOn: aStream names: varNames
	| names |
	aStream nextPut: ${.
	history ifNotNil: [ history printOn: aStream. aStream space ].
	names := substitution skPrintOn: aStream names: varNames.
	constraints
		ifNotEmpty: [ aStream nextPutAll: ' : '.
			names := constraints skPrintOn: aStream names: names ].
	aStream nextPut: $}.
	^ names