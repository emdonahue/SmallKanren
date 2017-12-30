list
sublist: theList
	"Binds theList to every possible subset of this list, that preserves the order of the original list."
	| a b c d |
	a := SKVar new.
	b := SKVar new.
	c := SKVar new.
	d := SKVar new.
	^ theList === Cons empty
		|
			((self caro: a cdro: b) & (theList caro: c cdro: d)
				&
					(a === c & [ b sublist: d ]
						| (a =/= c & [ b sublist: theList ])))
