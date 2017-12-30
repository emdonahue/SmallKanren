list
appendo: aHead to: aTail
	"Binds aHead and aTail to each corresponding partial list that, appended together, would result in the list bound to this Var. Equivalent to miniKanren appendo."

	^ [ :first :rest :firstOfHead :restOfHead | 
	{{{aHead isEmptyo.
	(self === aTail)}.
	{(aHead caro: firstOfHead cdro: restOfHead) .
	(self caro: firstOfHead cdro: rest).
	(rest appendo: restOfHead to: aTail)}}} ]