running
setUp
	'SmallKanren-Core' asPackage enforceContractC.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	x1 := SKSingleDisequality new
		left: x;
		right: 1.
	y2x1 := x1 and: y disequality: 2.