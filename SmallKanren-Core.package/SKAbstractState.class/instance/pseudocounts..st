probability
pseudocounts: pseudoCounts
	pseudoCounts isEmpty ifFalse: [ ^ SKPseudocountStore new state: self; pseudocounts: pseudoCounts ].