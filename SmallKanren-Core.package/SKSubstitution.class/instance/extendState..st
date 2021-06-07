extending
extendState: aState
	<type: #SKPackage returns: #SKPackage>
	"After a successful substitution extension, simply supply a new state with the extended substitution. The only failure possible within the substitution is the occurs check, as the unifier has already confirmed compatibility."
	^ aState copy substitution: self