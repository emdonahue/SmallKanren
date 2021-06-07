*SmallKanren-Core
lasto: anElement
	^ self carCdro: [ :a :d | anElement === a & d isEmptyo | (d lasto: anElement) ].