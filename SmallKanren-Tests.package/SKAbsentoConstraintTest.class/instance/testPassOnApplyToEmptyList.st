tests
testPassOnApplyToEmptyList
	"Tests that lists explicitly succeed when empty, rather than relying on implicit behavior of nil."

	self assert: ((x excludes: nil) run: (SKState new unify: x with: Cons empty)) isState