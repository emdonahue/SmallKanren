unifying
skUnifyVar: aVar in: aState runtime: aRuntime
	"Called by unifier when unifying two free Vars."

	"Tell unifiers not to bother with occurs check and only run constraints from the store."
	<todo> "Runtime sometimes nil. remove those calls"
	<type: #SKVar type: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution)
	type: #VoidC type: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution SKFailure)>
	^ aState checkVar: self extend: aVar runtime: aRuntime