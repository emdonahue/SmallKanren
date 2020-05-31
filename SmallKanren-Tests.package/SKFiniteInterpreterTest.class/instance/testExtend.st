interpreter
testExtend
	self
		assert:
			[ :sub | 
			interpreter
				extend: #x
				with: 42
				in: #(x y z) asCons
				o: sub ] asGoal run first first
		equals: #(42 y z) asCons.
	self
		assert:
			[ :sub | 
			interpreter
				extend: #z
				with: 42
				in: #(z y z) asCons
				o: sub ] asGoal run first first
		equals: #(42 y 42) asCons.
		
	
	self
		assert:
			[ :sub | 
			interpreter
				extend: #y
				with: #z
				in: #(x y z) asCons
				o: sub ] asGoal run first first
		equals: #(x z z) asCons.