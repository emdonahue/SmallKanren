probability
maximize
	^ (self asSpace collect: [ :s | s jointDistribution weight: s likelihood ]) sum.