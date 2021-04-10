list
caro: anElement
	"Binds anElement to the car of the list bound to this Var."
	
	^ self === (Cons car: anElement cdr: self class new)