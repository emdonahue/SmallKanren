tests-terms
testCopyTerm
	| one s fresh term |
	one := SKVar tag: #one.
	fresh := SKVar tag: #fresh.
	s := SKSubstitution new unify: one with: 1.
	self assert: (s copyTerm: one) equals: 1.
	self assert: (s copyTerm: (one cons: one)) equals: (1 cons: 1).
	self assert: (s copyTerm: 1) equals: 1.
	self assert: (s copyTerm: fresh) isSKVar.
	self deny: (s copyTerm: fresh) = fresh.
	self assert: (s copyTerm: (one cons: fresh)) car equals: 1.
	self assert: (s copyTerm: (one cons: fresh)) cdr isSKVar.
	self deny: (s copyTerm: (one cons: fresh)) cdr = fresh.
	term := (s copyTerm: (fresh cons: fresh)).
	self assert: term car equals: term cdr.
	self deny: term car = fresh.