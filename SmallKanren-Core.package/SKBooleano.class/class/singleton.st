accessing
singleton
	^ singleton := singleton ifNil: [ self new ].