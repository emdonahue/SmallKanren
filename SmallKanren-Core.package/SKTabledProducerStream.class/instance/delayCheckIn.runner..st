delaying
delayCheckIn: aMatchC runner: aRunner
	"perhaps there is some way to relax this and let some delays through?"

	"^ (stream delayCheckIn: aMatchC runner: aRunner) produceTabledAnswersFrom: self."

	<todo>
	^ SKBindClassic new
		stream: self;
		goal: aMatchC asGoal.