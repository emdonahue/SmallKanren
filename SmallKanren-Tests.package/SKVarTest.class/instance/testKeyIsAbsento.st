tests-list
testKeyIsAbsento
	self assert: (x === Cons empty & (x keyIsAbsento: 1)) runner runAll size equals: 1.
	self assert: (makeEnv1 & (env1 keyIsAbsento: #x)) runner runAll isEmpty.
	self assert: (makeEnv1 & (env1 keyIsAbsento: #y)) runner runAll size equals: 1.
	self assert: (makeEnv1 & (env1 keyIsAbsento: 1)) runner runAll size equals: 1.
	self assert: (makeEnv2 & (env2 keyIsAbsento: #x)) runner runAll isEmpty.
	self assert: (makeEnv2 & (env2 keyIsAbsento: #y)) runner runAll isEmpty.
	self assert: (makeEnv2 & (env2 keyIsAbsento: 1)) runner runAll size equals: 1.
	self assert: (makeEnv2 & (env2 keyIsAbsento: 2)) runner runAll size equals: 1.
	self assert: (makeEnv2 & (env2 keyIsAbsento: 3)) runner runAll size equals: 1