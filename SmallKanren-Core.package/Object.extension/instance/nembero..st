*SmallKanren-Core
nembero: x
	"Ensures that x is not in the list."

	^ self isEmptyo | (self carCdrIn: [ :first :rest | first =/= x & (rest nembero: x) ])