streams
ifFailure: aBlock
	stream ifFailure: [ aBlock cull: self ].