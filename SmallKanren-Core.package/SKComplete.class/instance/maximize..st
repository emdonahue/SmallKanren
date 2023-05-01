probability
maximize: aState
	"Keep either left or right, whichever is max."
	^ right maximize: (left maximize: aState).