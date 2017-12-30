as yet unclassified
setUp
	a := SKNom new.
	b := SKNom new.
	c := SKNom new.
	d := SKNom new.
	x := SKVar new.
	y := SKVar new.
	ab := SKSuspension new term: x; swaps: (a swap: b).
	ba := SKSuspension new term: x; swaps: (b swap: a).
	cd := SKSuspension new term: x; swaps: (c swap: d).
	abac := SKSuspension new term: x; swaps: (a swap: b) , (a swap: c).
	abcd := SKSuspension new term: x; swaps: (a swap: b) , (c swap: d).