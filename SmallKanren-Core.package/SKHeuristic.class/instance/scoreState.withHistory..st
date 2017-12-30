subclassresponsibility
scoreState: aState withHistory: aHistory
	"Returns the final State that will actually return to the user. Overriding methods must copy aState to avoid bad hygiene, and must set #score: and #history: appropriately."
	self subclassResponsibility