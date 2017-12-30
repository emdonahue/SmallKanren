list
element: theElement
	"Binds theElement to each value of the list represented by this Var. Equivalent to miniKanren membero."
	| a b |
	a := SKVar new.
	b := SKVar new.
	^ (self caro: a cdro: b)
		& (a === theElement | [ b element: theElement ])