delaying
carCdrIn: aBlock
"make this directly in terms of the cons pair, no need to parse pattern"

	<todo>
	^ self match: #(? #'.' ?) o: aBlock.	"SKConsDelayGoal new
		var: self;
		block: aBlock."