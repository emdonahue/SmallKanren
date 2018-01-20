delaying
car: aCar cdrIn: aBlock
	^ SKCdrDelayGoal new
		var: self;
		car: aCar;
		block: aBlock