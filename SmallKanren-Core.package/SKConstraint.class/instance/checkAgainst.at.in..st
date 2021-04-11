checking
checkAgainst: aValue at: aVar in: aState
	"Most constraints implicitly know their Var, so passing it in is unnecessary. However, DE constraints may be stored under the second variable if the top binding is two free variables, so we can't assume the DE knows which var it is checking against."

	^ self runAgainst: aValue in: aState