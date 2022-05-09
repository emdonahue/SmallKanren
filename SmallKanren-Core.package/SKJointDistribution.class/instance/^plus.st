arithmetic
+ aJoint

	| ds |
	ds := self distributions copy.
	aJoint distributions keysAndValuesDo: [ :k :v | 
		ds at: k put: (ds at: k ifPresent: [ :d | d + v ] ifAbsent: v) ].
	^ self copy distributions: ds.