*SmallKanren-Core
nsubseto: aSubset
	^  (aSubset carCdrIn: [ :a :d | (self nembero: a) | (self nsubseto: d) ]).

	"self isEmptyo & aSubset isEmptyo
		|
			(self
				carCdrIn: [ :a :b | 
					aSubset isEmptyo
						| (aSubset carCdrIn: [ :c :d | a === c | (b membero: c) & (self subseto: d) ]) ])."