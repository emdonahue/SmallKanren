*SmallKanren-Core
skUnifyCons: aCons in: aState
	"test speed with and without block for empty"

	<todo>
	^ self
		ifEmpty: SKFailure singleton
		ifNotEmpty: [ :s | (aState unify: aCons peek with: s peek) unify: aCons step with: s step ]