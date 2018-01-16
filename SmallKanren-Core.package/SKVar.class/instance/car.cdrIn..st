delaying
car: aCar cdrIn: aBlock
	^ SKCdrDelay new
		var: self;
		car: aCar;
		block: aBlock