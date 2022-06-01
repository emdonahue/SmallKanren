probability
maximize
	^ (self asSpace collect: [ :s | s pseudoCounts ]) sum.