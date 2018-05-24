*SmallKanren-Core
membero: x
	"Unifies x with each element of the list."
	^ self carCdrIn: [ :first :rest | first === x | (first =/= x & (rest membero: x)) ]