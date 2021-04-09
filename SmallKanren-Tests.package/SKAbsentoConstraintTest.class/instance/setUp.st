running
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	xhash := x hash asString copyFrom: 1 to: 4.
	'SmallKanren-Core' asPackage enforceContractC.