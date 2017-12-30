list
caro: anElement cdro: aList
	"Binds anElement to the car, and aList to the cdr of the list bound to this Var."

	^ self ===
		(Cons car: anElement cdr: aList)