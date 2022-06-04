arithmetic
scale: logWeight
	^ self pseudocounts collect: [ :d | d * logWeight ].