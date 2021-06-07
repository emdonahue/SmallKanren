*SmallKanren-Core
subseto: aSubset
	^ self isEmptyo & aSubset isEmptyo | (self carCdro: [ :a :b | aSubset isEmptyo | (aSubset carCdro: [ :c :d | (a === c | (b membero: c)) & (self subseto: d) ])])