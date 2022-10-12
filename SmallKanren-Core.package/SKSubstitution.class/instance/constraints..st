constraining
constraints: aStore
	aStore ifNotEmpty: [ ^ SKConstraintStore new state: self; setConstraints: aStore ]