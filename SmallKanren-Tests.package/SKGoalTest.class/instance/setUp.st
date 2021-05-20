initialization
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new tag: #z.
	s := SKState new.
	r := SKRuntime new.
	xhash := x hash asString copyFrom: 1 to: 4.
	yhash := y hash asString copyFrom: 1 to: 4.
	failure := SKStream failure.
	'SmallKanren-Core' asPackage enforceContractC.