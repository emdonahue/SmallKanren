unification
skUnifyVar: aVar in: aState
	<type: #SKVar type: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution) returns: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution SKFailure)>
	"Called by unifier when unifying two free Vars."
	"Tell unifiers not to bother with occurs check and only run constraints from the store."
	^ aState extend: aVar checkVar: self.