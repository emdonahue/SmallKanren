laziness
eager: aVar val: aVal in: aState runtime: aRuntime
	<todo> "Remove this"
	"Checks have alreday been run and aState is modified by the latest constraints so we can just hand control over to the lazy constraint to do the unification and running."
	"^ self lazyConstraint eager: aVar val: aVal in: aState runtime: aRuntime."
	^ super eager: aVar val: aVal in: aState runtime: aRuntime.