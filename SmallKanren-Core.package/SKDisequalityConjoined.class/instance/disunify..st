disunifying
disunify: aState
	"Perform the usual unification, then continue unifying the rest of the constraints in the same substitution. Only conjoined and pairs can be receivers of disunify: because the single has already fired."
	^ (first disunify: aState) disunify: rest.