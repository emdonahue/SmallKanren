*SmallKanren-Core
subseto: aSubset
	^ aSubset isEmptyo | (aSubset carCdrIn: [ :a :d | (self membero: a) & (self subseto: d) ])