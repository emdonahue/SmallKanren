testing
isWaitingStream
	"Signifies that the stream depends on tabled consumers that may or may not be waiting for more answers. Used to determine whether we should create a tabled mplus to allow for wait checks."
	^ true