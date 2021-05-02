checking
disunify: aVar with: aVal in: aSubstitution
	"Attempt to unify var and val in the substitution and generate the appropriate simplified constraint as a result. Note that var and val have already been walked, and one of them must be the variable this constraint is bound to. Consequently, we can use val directly as the walked value of var without additional walking."
	^ (aSubstitution disunify: aVar with: aVal) asDisequality.