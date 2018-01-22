*SmallKanren-Core
asConde
	^ self inject: SKFail singleton into: [ :disj :g | disj | g  ]