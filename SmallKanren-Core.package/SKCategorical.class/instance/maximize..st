probability
maximize: aSufficientStatistic
	| z |
	z := aSufficientStatistic statistics reduce: [ :a :b | self log: a sum: b ]. "Normalization constant."
	^ self class new logProbabilities: (aSufficientStatistic statistics collect: [ :p | self log: p division: z ]).