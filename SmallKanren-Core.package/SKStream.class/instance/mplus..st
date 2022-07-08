streaming
mplus: aStream
	"At the end of + and plus:, actually create the interleaving MPlus structure."
	^ SKMPlus new
		left: self;
		right: aStream.