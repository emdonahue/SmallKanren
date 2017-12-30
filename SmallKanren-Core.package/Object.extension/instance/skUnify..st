*SmallKanren-Core
skUnify: aVar
	"^ SKResults with: ( SKState new unify: aVar with: self )" "Swap aVar with self in case aVar has a better plan for unification than a generic object."
	self deprecated: 'should never be reached due to pre-emptive unification'.
	^ SKUnification new left: aVar; right: self