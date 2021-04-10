reifying
reify: aVar
	"Substitutions just let the Var or value self-reify, unlike more complex reifiers."
	^ aVar skReify: self