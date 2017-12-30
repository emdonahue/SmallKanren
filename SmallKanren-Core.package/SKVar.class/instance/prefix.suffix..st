list
prefix: aHead suffix: aTail
	"Binds aHead and aTail to each corresponding partial list that, appended together, would result in the list bound to this Var. Equivalent to miniKanren appendo."
	| first rest firstOfHead restOfHead |
	first := SKVar new.
	rest := SKVar new.
	firstOfHead := SKVar new.
	restOfHead := SKVar new.
	^ ( ( aHead === Cons empty ) & ( self === aTail ) )
		| ( ( aHead caro: firstOfHead cdro: restOfHead )
			& ( self caro: firstOfHead cdro: rest )
			& [ rest prefix: restOfHead suffix: aTail ] ).