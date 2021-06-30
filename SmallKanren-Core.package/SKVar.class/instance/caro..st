list
caro: anElement
	"Binds anElement to the car of the list bound to this Var."
	<todo> "make a non-substitution-extending dummy var class to unify with cdr."
	^ self === (Cons car: anElement cdr: self class new)