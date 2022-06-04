arithmetic
average: pseudoCounts
	^ self class new 
		pseudocounts: (self sum: (self scale: pseudoCounts likelihood) counts: (pseudoCounts scale: likelihood));
		likelihood: (self log: likelihood product: pseudoCounts likelihood).