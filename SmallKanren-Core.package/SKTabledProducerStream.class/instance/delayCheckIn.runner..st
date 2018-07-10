delaying
delayCheckIn: aMatchC runner: aRunner
	"^ (stream delayCheckIn: aMatchC runner: aRunner) produceTabledAnswersFrom: self."
	^ SKBind new stream: self; goal: aMatchC asGoal