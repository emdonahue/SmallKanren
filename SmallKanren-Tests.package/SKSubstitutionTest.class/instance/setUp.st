initialization
setUp
	a := SKVar new.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new.
	s := SKSubstitution empty.
	'SmallKanren-Core' asPackage signContracts.
