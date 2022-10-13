scheduling
prioritize: aVar schedule: varVal
	^ self schedule: (self schedule collect: [ :g | g removeExternals: {aVar}])