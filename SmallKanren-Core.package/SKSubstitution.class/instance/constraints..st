constraining
constraints: aStore
	aStore ifNotEmpty: [ ^ SKConstraintStore new substitution: self; setConstraints: aStore ]