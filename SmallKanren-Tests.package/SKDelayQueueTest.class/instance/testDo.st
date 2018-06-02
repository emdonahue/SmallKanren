tests
testDo
	| sum |
	sum := 0.
	empty do: [ :x | sum := sum + x ].
	self assert: sum equals: 0.
	(empty add: 1) do: [ :x | sum := sum + x ].
	self assert: sum equals: 1.
	(((empty add: 1) add: 2) removeFirst add: 2) do: [ :x | sum := sum + x ].
	self assert: sum equals: 4