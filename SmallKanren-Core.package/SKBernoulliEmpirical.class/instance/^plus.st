arithmetic
+ aBernoulli
	^ self class new 
		ones: (self log: ones sum: aBernoulli ones);
		zeroes: (self log: zeroes sum: aBernoulli zeroes).