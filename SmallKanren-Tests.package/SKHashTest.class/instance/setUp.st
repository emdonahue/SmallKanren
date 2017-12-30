as yet unclassified
setUp
	a := SKNom new.
	b := SKNom new.
	c := SKNom new.
	x := SKVar new.
	y := SKVar new.
	xy := Cons with: x with: y.
	xa := Cons with: x with: a.
	state := SKState new.
	sub := SKSubstitution new.