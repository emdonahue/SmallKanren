printing
printOn: aStream
	aStream nextPutAll: self class asString.
	(pseudocounts isNil or: [ pseudocounts likelihood isZero ]) ifFalse: [ 
		aStream nextPut: $(.
		self likelihood exp printOn: aStream.
		aStream nextPut: $). ].