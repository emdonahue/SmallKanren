unifying
skUnifyVar: aVar in: aState

	"Called by unifier when unifying two free Vars."

	"Tell unifiers not to bother with occurs check and only run constraints from the store."

	"Runtime sometimes nil. remove those calls"

	<todo>
	<type: #SKVar type: #isState type: #isStateOrFailure>
	^ aState check: aVar value: self