running
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new tag: #z.
	w := SKVar new tag: #w.
	one := SKVar tag: #one.
	two := SKVar tag: #two.
	satisfied := SKConstraint satisfied.
	xhash := x hash asString copyFrom: 1 to: 4.
	yhash := y hash asString copyFrom: 1 to: 4.
	'SmallKanren-Core' asPackage enforceContractC.
	failure := SKStream failure.
	state := SKState new.