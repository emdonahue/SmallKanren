disequality
=/= aVar
	"The disequality constraint ensures that in no succeeding answer will this variable ever be equal to the value or variable it is constrained by."
<todo>
	"TODO: This should be implemented at the Object level"
	^ SKDisequalityGoal new
		left: self;
		right: aVar.