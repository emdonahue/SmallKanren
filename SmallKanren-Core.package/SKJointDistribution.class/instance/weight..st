arithmetic
weight: logWeight
	^ self copy distributions: 
		(self distributions collect: [ :d | d weight: logWeight ]).