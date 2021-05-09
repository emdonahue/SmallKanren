subclassresponsibility
bind: aGoal runtime: aRunner
	<todo>
	"make this polymorphic, not a test"
	"Binds only exist to hold tabled goals while underlying delayed streams resolve enough for the table to reify their cache keys. As such, we need to pass all new goals down to the delay to help it resolve correctly. However, we do not pass other tabled goals down, as that would create an endless regress of tables sending tables down. Since tabled goals do not resolve the delay but only wait for it, we can keep them up above."
	 (aGoal isKindOf: SKTabledGoal) ifTrue: [ ^ self class new goal: aGoal; stream: self ].
	^ (stream bind: aGoal runtime: aRunner) bind: goal runtime: aRunner.