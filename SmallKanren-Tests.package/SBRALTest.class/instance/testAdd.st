tests
testAdd
	| sbral |
	sbral := SBRAL empty.
	self assert: sbral size equals: 0.
	1 to: 100 do: [ :i | 
		sbral := sbral add: i.
		self assert: sbral size equals: i.
		self assert: sbral isValid.
		1 to: i do: [ :j| self assert: (sbral at: j) equals: (i - j + 1) ]
		 ].