subclassresponsibility
treeRoot
	"Both the empty State and the first suspended branch start with some initial history as defined by the Heuristic. Currently, this is used to initialize both the tree inside the State and the branch inside the Streams, simply because those do not differ in any current model. It may, in future, be necessary to add a branchRoot."

	self subclassResponsibility