probability
maximize
	^ (self asSpace collect: [ :s | s jointDistribution ]) sum.