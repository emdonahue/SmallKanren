arithmetic
sum: a counts: b
	| ds |
	ds := a copy.
	b keysAndValuesDo: [ :k :v | 
		ds at: k put: (ds at: k ifPresent: [ :d | d + v ] ifAbsent: v) ].
	^ ds.