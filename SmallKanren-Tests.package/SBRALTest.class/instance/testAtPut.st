tests
testAtPut
	| sbral |
	self assert: (((SBRAL empty add: 1) at: 1 put: #symbol) at: 1) equals: #symbol.
	self assert: (((SBRAL empty addAll: #(1 2)) at: 2 put: #symbol) at: 2) equals: #symbol.
	self assert: (((SBRAL empty addAll: #(1 2 3)) at: 3 put: #symbol) at: 3) equals: #symbol.
	sbral := SBRAL empty.
	1 to: 100 do: [ :i | 
		sbral := sbral add: i.
		1 to: i do: [ :j | self assert: ((sbral at: j put: #symbol) at: j) equals: #symbol ] ].