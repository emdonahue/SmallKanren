running
setUp
	super setUp.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	symbolo := SKConstraint symbolo.
	numbero := SKConstraint numbero.
	satisfied := SKConstraint satisfied.
	unsatisfiable := SKConstraint unsatisfiable.