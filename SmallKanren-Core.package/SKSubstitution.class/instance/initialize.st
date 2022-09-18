initialization
initialize
	<todo> "create a dedicated empty substitution so we don't have to make a new object every time"
	super initialize.
	hashmap := ABBench a: [FDSLinkedList empty] b: [SBRAL empty].