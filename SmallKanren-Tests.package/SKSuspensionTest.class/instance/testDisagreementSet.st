as yet unclassified
testDisagreementSet
	self assert: (ab disagreementSet: ba) equals: Cons new.
	self assert: (ab disagreementSet: cd) equals: (Cons with: a with: b with: c with: d).
	self assert: (ab disagreementSet: abcd) equals: (Cons with: c with: d).
	self assert: (ab disagreementSet: abac) equals: (Cons with: a with: c).