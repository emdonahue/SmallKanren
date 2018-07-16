tabling
reuse: argVars cache: aCache state: aState
	"Implements 'reuse' from original mk code."

	
	^ SKReusedStream new
		argVars: argVars;
		cache: aCache;
		state: aState.