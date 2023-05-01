probability
maximize: aState
	"Keep the only available state."
	aState ifNotNil: [ ^ aState ].