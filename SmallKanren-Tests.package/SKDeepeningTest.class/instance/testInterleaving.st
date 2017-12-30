tests-.or
testInterleaving
	| runner one three |
	runner := {[ {(x === 1).
	(x === 3)} asConde ].
	[ {(x === 2).
	(x === 4)} asConde ]} asConde runner: SKDeepening new.
	self assert: runner score equals: 0.
	self assert: runner step score equals: 1.
	self assert: runner step step score equals: 1.
	self assert: runner step step step score equals: 2.
	self assert: runner step step step step score equals: 2.
	self assert: runner step step step step step score equals: 3.
	one := runner step step step step step step.
	self assert: one score equals: 0.
	self assert: one peek => x equals: 1.
	self assert: one step score equals: 3.
	self assert: one step step score equals: 0.
	self assert: one step step peek => x equals: 2.
	self assert: one step step step score equals: 3.
	three := one step step step step.
	self assert: three score equals: 0.
	self assert: three peek => x equals: 3.
	self assert: three step score equals: 3.
	self assert: three step step score equals: 0.
	self assert: three step step peek => x equals: 4.
	self assert: three step step step atEnd