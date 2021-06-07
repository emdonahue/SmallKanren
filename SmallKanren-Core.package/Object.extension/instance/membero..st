*SmallKanren-Core
membero: x
	"Unifies x with each element of the list."
	^ self carCdro: [ :first :rest | first === x | (first =/= x & (rest membero: x)) ]