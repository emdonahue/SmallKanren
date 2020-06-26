occurscheck
occurs: x in: unwalkedY sub: sub
	^ (self
		occurs: x
		in: unwalkedY
		sub: sub
		rest: Cons empty) asGoal