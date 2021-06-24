initialization
initialize
	super initialize.
	options := Dictionary new.
	options at: #lookahead put: 200.