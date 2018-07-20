*SmallKanren-Core
lasto: anElement
	^ self carCdrIn: [ :a :d | anElement === a & d isEmptyo | (d lasto: anElement) ].