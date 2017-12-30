tests
testKeyoValueo
	self assert: (42 keyo: x valueo: y) asGoal runner runAll isEmpty.
	self assert: (Cons empty keyo: x valueo: y) asGoal runner runAll isEmpty.
	self assert: (env keyo: x valueo: y) asGoal runner runAll size equals: 2.
	self assert: (env keyo: x valueo: y) asGoal runner runAll first => (x cons: y) equals: (#x cons: 1).
	self assert: (env keyo: x valueo: y) asGoal runner runAll second => (x cons: y) equals: (#y cons: 2).
	self assert: (env keyo: #x valueo: y) asGoal runner runAll size equals: 1.
	self assert: (env keyo: #x valueo: y) asGoal runner runAll first => ( y) equals: (1).
	self assert: (env keyo: #y valueo: y) asGoal runner runAll size equals: 1.
	self assert: (env keyo: #y valueo: y) asGoal runner runAll first => ( y) equals: (2).