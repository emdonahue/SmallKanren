*SmallKanren-Core
asGoal
	^ self inject: SKSucceed singleton into: [ :conj :g | conj & g asConde ]