initialization
setUp
	a := SKVar new.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new.
	'SmallKanren-Core' asPackage enforceContractC.
