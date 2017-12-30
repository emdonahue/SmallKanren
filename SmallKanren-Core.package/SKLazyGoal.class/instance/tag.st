accessing
tag
	^ tag ifNil: [ block sourceNode body statements hash ]