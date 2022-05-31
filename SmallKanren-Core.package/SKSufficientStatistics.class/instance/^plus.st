arithmetic
+ aSufficientStatistic
	^ self class new statistics:
		(statistics with: aSufficientStatistic statistics collect: 
			[ :a :b | self log: a sum: b ]).