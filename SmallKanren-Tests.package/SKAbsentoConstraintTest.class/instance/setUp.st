running
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	no1 := SKConstraint absento: 1.
	no2 := SKConstraint absento: 2.
	no3 := SKConstraint absento: 3.
	no4 := SKConstraint absento: 4.
	satisfied := SKConstraint satisfied.
	xhash := x hash asString copyFrom: 1 to: 4.
	'SmallKanren-Core' asPackage signContracts.