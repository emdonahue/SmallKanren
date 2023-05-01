probability
maximize: aState
	"A stream with no existing state should just cache the max."
	^ SKMaximizeStream new state: aState; stream: self.