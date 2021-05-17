requirements
singleton
	singleton ifNil: [ singleton := self new ].
	^ singleton.