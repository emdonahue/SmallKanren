*SmallKanren-Core
asGoal
	^ self inject: SKSuccess singleton into: [ :conj :g | conj & g asConde ]