interpreter
testWalk

	self
		assert:
			[ :val | interpreter walk: #x in: #(x y z) asCons o: val ] asGoal run
				first first
		equals: #x.
	self
		assert:
			[ :val | interpreter walk: #z in: #(x y z) asCons o: val ] asGoal run
				first first
		equals: #z.
	self
		assert:
			[ :val | interpreter walk: #y in: #(x 42 z) asConsTree o: val ] asGoal
				run first first
		equals: 42