arithmetic
+ aJoint
	self ifEmpty: [ ^ aJoint ].
	aJoint ifEmpty: [ ^ self ].
	^ self copy 
		pseudocounts: (self sum: aJoint pseudocounts); 
		likelihood: (self log: likelihood sum: aJoint likelihood).