merging
unifiesSize: aSize
	^ (first unifiesSize: aSize) and: [ rest unifiesSize: aSize ].