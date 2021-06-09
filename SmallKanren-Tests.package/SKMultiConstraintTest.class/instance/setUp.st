tests
setUp 
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	z := SKVar tag: #z.
	xn1 := (x=/=1).
	xn2 := (x=/=2).
	yn1 := (y=/=1).
	yn2 := (y=/=2).
	xny := x=/=y.
	no1 := SKConstraint absento: 1.
	no2 := SKConstraint absento: 2.
	no3 := SKConstraint absento: 3.
	no4 := SKConstraint absento: 4.
	noSymbol := SKConstraint absento: #symbol.
	symbolo := SKConstraint symbolo.
	numbero := SKConstraint numbero.
	booleano := SKConstraint booleano.
	satisfied := SKConstraint satisfied.
	unsatisfiable := SKConstraint unsatisfiable.
	null := SKConstraint new.
	s := SKState new.
	r := SKRuntime new.
	failure := SKStream failure.
	istrue := SKUnificationConstraint new term: true.