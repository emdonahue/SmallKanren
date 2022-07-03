tests
testAndOr
	| ss |
	ss := {{{(x === 1).
	(x === 2)}}.
	{{(y === 1).
	(y === 2)}}} asGoal runStates.
	self assert: ss size equals: 4.
	"Use prime factorization to check all combinations."
	self
		assert:
			(ss collect: [ :s2 | (2 raisedTo: s2 => x) * (3 raisedTo: s2 => y) ])
				sorted
		equals: #(6 12 18 36) asCons.