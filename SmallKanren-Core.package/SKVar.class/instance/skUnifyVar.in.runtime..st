unifying
skUnifyVar: aVar in: aState runtime: aRuntime
	"Called by unifier when unifying two free Vars."

	"Tell unifiers not to bother with occurs check and only run constraints from the store."

	<type: #SKVar type: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution)
	type: #SKRuntime type: #SKRuntime type: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution SKFailure)>
	^ aState checkVar: self extend: aVar runtime: aRuntime