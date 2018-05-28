*SmallKanren-Core
subseto: aSubset
	^ self isEmptyo & aSubset isEmptyo | (self carCdrIn: [ :a :b | aSubset isEmptyo | (aSubset carCdrIn: [ :c :d | (a === c | (b membero: c)) & (self subseto: d) ])])