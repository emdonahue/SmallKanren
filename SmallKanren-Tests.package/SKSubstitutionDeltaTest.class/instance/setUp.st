running
setUp
	super setUp.
	'SmallKanren-Core' asPackage enforceContractC.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	x1 := SKDisequalityPair new
		left: x;
		right: 1.
	y2x1 := x1 and: y disequality: 2.