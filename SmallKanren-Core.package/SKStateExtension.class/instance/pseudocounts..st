probability
pseudocounts: pseudoCounts
	pseudoCounts isEmpty ifFalse: [ ^ self extend: (state pseudocounts: pseudoCounts) ].