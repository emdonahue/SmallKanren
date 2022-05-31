arithmetic
+ aJoint
	| ds |
	self ifEmpty: [ ^ aJoint ].
	aJoint ifEmpty: [ ^ self ].
	ds := self pseudocounts copy.
	aJoint pseudocounts keysAndValuesDo: [ :k :v | 
		ds at: k put: (ds at: k ifPresent: [ :d | d + v ] ifAbsent: v) ].
	^ self copy pseudocounts: ds; likelihood: (self log: likelihood sum: aJoint likelihood).