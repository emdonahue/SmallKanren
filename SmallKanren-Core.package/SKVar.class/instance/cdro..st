list
cdro: aList
	"Binds  aList to the cdr of the list bound to this Var."
	| head |
	head := SKVar new.
	^ self === (Cons car: head cdr: aList)