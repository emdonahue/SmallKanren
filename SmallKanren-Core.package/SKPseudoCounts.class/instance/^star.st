arithmetic
* logWeight
	^ self class new 
		pseudocounts: (self pseudocounts collect: [ :d | d * logWeight ]);
		likelihood: (self log: likelihood product: logWeight).