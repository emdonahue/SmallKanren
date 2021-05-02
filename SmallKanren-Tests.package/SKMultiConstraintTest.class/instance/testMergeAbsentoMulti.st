tests
testMergeAbsentoMulti
	"Merge redundant exclusions across a null."
	self assert: (no1, null merge2: no1) equals: no1, null.
	self assert: (null, no1 merge2: no1) equals: null, no1.
	self assert: (no1 merge2: no1, null) equals: no1, null.
	self assert: (no1 merge2: null, no1) equals: null, no1.
	
	"Merge a redundant exclusion into a disjoined absento across a null."
	self assert: (no1, no2, null merge2: no1) equals: no1, no2, null.
	self assert: (no2, no1, null merge2: no1) equals: no2, no1, null.
	self assert: (null, no1, no2 merge2: no1) equals: null, no1, no2.
	self assert: (null, no2, no1 merge2: no1) equals: null, no2, no1.
	
	self assert: (no1 merge2: no1, no2, null) equals: no1, no2, null.
	self assert: (no1 merge2: no2, no1, null) equals: no2, no1, null.
	self assert: (no1 merge2: null, no1, no2) equals: null, no1, no2.
	self assert: (no1 merge2: null, no2, no1) equals: null, no2, no1.
	
	"Split and reassemble disjoined absento across null."
	self assert: (no1, null merge2: no1, no2) equals: no2, no1, null.
	self assert: (null, no1 merge2: no1, no2) equals: null, no2, no1.
	self assert: (no1, null merge2: no1, no2, null) equals: null, no2, no1, null.
	self assert: (no1, null merge2: null, no1, no2) equals: null, no2, no1, null.
	self assert: (null, no1 merge2: no1, no2, null) equals: null, null, no2, no1.
	self assert: (null, no1 merge2: null, no1, no2) equals: null, null, no2, no1.
	
	"Merge multiples across a null."
	self assert: (no3, no4, null merge2: no2, no1, null) equals: null, no4, no3, no2, no1, null.
	self assert: (no3, no4, null merge2: null, no2, no1) equals: null, no4, no3, no2, no1, null.
	self assert: (null, no3, no4 merge2: no2, no1, null) equals: null, null, no4, no3, no2, no1.
	self assert: (null, no3, no4 merge2: null, no2, no1) equals: null, null, no4, no3, no2, no1.