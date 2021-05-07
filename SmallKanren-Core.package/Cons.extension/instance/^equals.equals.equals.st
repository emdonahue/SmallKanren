*SmallKanren-Core
=== aVar
	^ self ifEmpty: [ aVar skUnifyGround: Cons empty ] ifNotEmpty: [ :s | aVar skUnifyCons: s ]