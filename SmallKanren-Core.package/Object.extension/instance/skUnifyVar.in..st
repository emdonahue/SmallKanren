*SmallKanren-Core
skUnifyVar: aVar in: aState
	<todo>
	"comments"
	"Unification in which aVar is guaranteed to be a Var."
	"^ (aState extend: aVar with: self) checkConstraintsOn: aVar boundTo: self"
	^ (aState extendAndCheck: aVar with: self) 