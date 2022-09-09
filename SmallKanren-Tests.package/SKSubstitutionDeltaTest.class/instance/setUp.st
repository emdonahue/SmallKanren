running
setUp
	super setUp.
	'SmallKanren-Core' asPackage signContracts.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	x1 := SKDisequalityPair new
		left: x;
		right: 1.
	y2x1 := x1 and: y disequals: 2.