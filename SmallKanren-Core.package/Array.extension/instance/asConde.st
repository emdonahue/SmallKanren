*SmallKanren-Core
asConde
	^ self inject: SKFailure singleton into: [ :disj :g | disj | g  ]