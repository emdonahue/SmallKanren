initialization
setUp
	super setUp.
	empty := Cons empty.
	pair := Cons car: 1 cdr: 2.
	list := Cons with: 1 with: 2 with: 3.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new tag: #z.
	s := ((SKState new unify: x with: 1) unify: y with: 2) unify: z with: 3.