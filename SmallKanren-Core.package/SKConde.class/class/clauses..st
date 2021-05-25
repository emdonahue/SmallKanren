accessing
clauses: someClauses
	| clauses |
	clauses := someClauses collect: [ :c | c asGoal ] thenSelect: [ :g | g isNotFail ].
	clauses ifEmpty: [ ^ SKGoal fail ].
	clauses size = 1 ifTrue: [ ^ clauses first ].
	clauses size = 2 ifTrue: [ ^ clauses first | clauses second ].
	^ self new clauses: clauses.