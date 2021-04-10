list
cdro: aList
	"Binds  aList to the cdr of the list bound to this Var."
	
	^ self === (Cons car: self class new cdr: aList)