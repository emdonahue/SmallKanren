tabling
reuse: argVars cache: aCache state: aState
	"Implements 'reuse' from original mk code."

	^ SKTabledConsumerStream new cache: aCache; state: aState.