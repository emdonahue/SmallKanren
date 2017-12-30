*SmallKanren-Core
=== aVar
	^ self ifEmpty: [ aVar skUnifyEmptyCons] ifNotEmpty: [ :s | aVar skUnifyCons: s ]