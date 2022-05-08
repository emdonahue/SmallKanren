as yet unclassified
weight: logWeight add: logTotals
	^ self class new 
		ones: (self count: ones weight: logWeight add: logTotals ones);
		zeroes: (self count: zeroes weight: logWeight add: logTotals zeroes).
		