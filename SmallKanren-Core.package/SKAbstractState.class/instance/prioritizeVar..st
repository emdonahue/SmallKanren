scheduling
prioritizeVar: aVar
	^ self schedule: (self schedule collect: [ :g | g removeExternals: {aVar}])