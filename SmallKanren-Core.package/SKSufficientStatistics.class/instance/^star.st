accessing
* aWeight
	^ self class new statistics: 
		(statistics collect: [ :s | self log: s product: aWeight ]).