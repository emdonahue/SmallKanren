merging
unifiesCar: aCar
	^ (first unifiesCar: aCar) and: [ rest unifiesCar: aCar ].