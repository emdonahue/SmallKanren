subclassresponsibility
bind: aGoal runtime: aRunner
	"Maybe this can be relaxed to let through goals that will not call the same tabled relation with the same arguments. That case fails because it makes the producer depend internally on the reuse of answers it has not produced yet"

	"^ (stream bind: aGoal runner: aRunner) produceTabledAnswersFrom: self."

	<todo>
	^ SKBindClassic new
		goal: aGoal;
		stream: self.