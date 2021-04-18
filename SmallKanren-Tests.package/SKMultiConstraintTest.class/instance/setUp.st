running
setUp
	'SmallKanren-Core' asPackage enforceContractC.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	multi := SKMultiConstraint new
		type: SKNumberConstraint singleton;
		disequality: (x =/= 1) asConstraint;
		exclusion: (x excludes: 2) asConstraint.
		xhash := x hash asString copyFrom: 1 to: 4.
		satisfied := SKConstraint satisfied.
		unsatisfiable := SKConstraint unsatisfiable.
		symbolo := SKConstraint symbolo.
		numbero := SKConstraint numbero.
	