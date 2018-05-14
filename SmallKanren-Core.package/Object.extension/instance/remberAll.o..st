*SmallKanren-Core
remberAll: p o: delta
	| deltaNoX |
	deltaNoX := SKVar new.
	^ p isEmptyo & (self === delta) | (p carCdrIn: [ :x :rest | (self rember: x o: deltaNoX) & (deltaNoX remberAll: rest o: delta) ])