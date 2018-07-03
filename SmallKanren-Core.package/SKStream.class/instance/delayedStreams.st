accessing
delayedStreams
	^ self packages reject: [ :p | p isState ].