running
setUp
	s := SKState new.
	x := SKVar new.
	y := SKVar new.
	z := SKVar new.
	satisfied := SKConstraint satisfied.
	'SmallKanren-Core' asPackage enforceContractC.