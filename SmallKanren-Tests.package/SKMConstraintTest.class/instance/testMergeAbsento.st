tests
testMergeAbsento
	self assert: (no1 merge2: no1) equals: no1.
	self assert: (no1, no2 merge2: no1) equals: no1, no2.
	self assert: (no2, no1 merge2: no1) equals: no2, no1.
	self assert: (no1 merge2: no1, no2) equals: no2, no1.
	self assert: (no1 merge2: no2, no1) equals: no2, no1.
	self assert: (no1 merge2: no2) equals: no2, no1.
	self assert: (no3, no4 merge2: no2, no1) equals: no4, no3, no2, no1.
	