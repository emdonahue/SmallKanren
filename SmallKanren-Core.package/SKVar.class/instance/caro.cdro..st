list
caro: anElement cdro: aList
	<todo> "Refactor whole list library considering match"
	"Binds anElement to the car, and aList to the cdr of the list bound to this Var."

	^ self === (Cons car: anElement cdr: aList).