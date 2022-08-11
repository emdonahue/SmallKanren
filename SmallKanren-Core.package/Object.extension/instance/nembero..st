*SmallKanren-Core
nembero: x
	"Ensures that x is not in the list."
	^ self isEmptyo | (self carCdro: [ :first :rest | first =/= x & (rest nembero: x) ])