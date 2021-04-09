running
setUp
	x := SKVar new.
	y := SKVar new.
	z := SKVar new.
	'SmallKanren-Core' asPackage enforceContractC.
	"x1 := SKState new unify: x with: 1.
	y2 := SKState new unify: y with: 2.
	x1y2 := (SKState new unify: x with: 1) unify: y with: 2.
	x1yx := (SKState new unify: x with: 1) unify: y with: x.
	xNot1 := SKDEC new disequalities: (Cons with: x <- 1).
	yNot2 := SKDEC new disequalities: (Cons with: y <- 2)"