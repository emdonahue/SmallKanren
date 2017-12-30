list
caro: anElement
	"Binds anElement to the car of the list bound to this Var."

	| tail |
	tail := SKVar new.
	^ self ===
		(Cons car: anElement cdr: tail)