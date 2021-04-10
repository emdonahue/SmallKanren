unification
skUnifyVar: aVar in: aState
	<type: #SKVar type: #(OrC SKPackage SKSubstitution SKSubstitutionDelta) returns: #(OrC SKPackage SKSubstitution SKSubstitutionDelta SKFailure)>
	"Called by unifier when unifying two free Vars."
	"Tell unifiers not to bother with occurs check and only run constraints from the store."
	^ aState extendAndCheck: aVar withVar: self.