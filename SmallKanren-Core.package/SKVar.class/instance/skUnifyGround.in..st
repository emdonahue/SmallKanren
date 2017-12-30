unification
skUnifyGround: aValue in: aState
	<todo>
	"can these be combined into one call and short circuited by Delayed?"
	"^ (aState extend: self with: aVar) checkConstraintsOn: self boundTo: aVar"
	^ aState extendAndCheck: self with: aValue