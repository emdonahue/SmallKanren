arithmetic
+ aSufficientStatistic
	| counts |
	counts := aSufficientStatistic statistics copy.
	statistics keysAndValuesDo: [ :k :v | 
		counts at: k ifPresent: [ :c | counts at: k put: (self log: v sum: c) ] ifAbsentPut: v ].
	^ self class new statistics: counts.
		