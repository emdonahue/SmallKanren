testing
isFailure
	"A failed cache is one that never produced any answers, so streams can just fail without even being created."
	^ self isClosed and: [ entries isEmpty ].