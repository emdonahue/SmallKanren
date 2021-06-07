*SmallKanren-Core
nsubseto: aSubset
	^  (aSubset carCdro: [ :a :d | (self nembero: a) | (self nsubseto: d) ]).