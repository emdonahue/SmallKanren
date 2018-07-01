delaying
car: aCar cdrIn: aBlock
	<todo>
	"make this directly in terms of the cons pair, no need to parse pattern"
	^ self
		match:
			{aCar.
			#'.'.
			#?.}
		o: aBlock.
	"^ SKCdrDelayGoal new
		var: self;
		car: aCar;
		block: aBlock"