subclassresponsibility
bind: aGoal runtime: aRunner
	<todo>
	^ super bind: aGoal runtime: aRunner.
	"^ SKReusedBind new stream: self; goal: aGoal"