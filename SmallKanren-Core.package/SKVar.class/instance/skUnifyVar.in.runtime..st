unifying
skUnifyVar: aVar in: aState runtime: aRuntime
	<type: #SKVar type: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution) type: #SKRuntime type: #SKRuntime returns: #(OrC SKPackage SKSubstitution #SKDisequalitySubstitution SKFailure)>
	"Called by unifier when unifying two free Vars."
	"Tell unifiers not to bother with occurs check and only run constraints from the store."
	^ aState extend: aVar checkVar: self runtime: aRuntime.