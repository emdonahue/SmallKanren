scheduling
scheduleHasDependency: aVar
	self schedule detect: [ :g | g dependsOnExternal: aVar ] 
		ifFound: [ ^ true ]
		ifNone: [ ^ false ].