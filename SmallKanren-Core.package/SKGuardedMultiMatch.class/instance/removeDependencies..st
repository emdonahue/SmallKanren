scheduling
removeDependencies: aSchedule
	^ aSchedule collect: [ :g | g removeExternals: externals ]