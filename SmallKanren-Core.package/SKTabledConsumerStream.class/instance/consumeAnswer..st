subclassresponsibility
consumeAnswer: aRunner
	"Mutates the underlying stateful ReusedStream and returns just the stream produced by the next answer. No need to re-create the whole stream functionally because ConsumerStreams are mutable all the way down."
	self subclassResponsibility.