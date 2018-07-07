*SmallKanren-Core
nsubseto: aSubset
	^  (aSubset carCdrIn: [ :a :d | (self nembero: a) | (self nsubseto: d) ]).