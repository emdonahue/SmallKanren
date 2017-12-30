list
remove: anElement rest: remainingElements
	"Binds anElement to each element of the list bound to this Var, and remainingElements to the elements remaining after anElement is removed from this list. Equivalent to miniKanren rembero."
	| a b res |
	a := SKVar new.
	b := SKVar new.
	res := SKVar new.
	^ ((self === Cons empty) & (remainingElements === Cons empty))
		|
			((self caro: a cdro: b)
				&
					( ((a === anElement) & (res === remainingElements))
						| ((a =/= anElement) & (remainingElements caro: a cdro: res)))
						
						& [b remove: anElement rest: res])

