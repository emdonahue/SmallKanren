arithmetic
* logWeight
	^ self class new 
		pseudocounts: (self scale: logWeight);
		likelihood: (self log: likelihood product: logWeight).