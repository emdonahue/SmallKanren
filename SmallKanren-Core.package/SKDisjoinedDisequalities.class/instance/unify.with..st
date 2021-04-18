checking
unify: aVar with: aVal
	<todo> "if we keep disjoined disequalities, make this actually normalize. for now just skip normalizing and be inefficient."
	"^ (constraint unify: aVar with: aVal) orDisequality: (next unify: aVar with: aVal)."