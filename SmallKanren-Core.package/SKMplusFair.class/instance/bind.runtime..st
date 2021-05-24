subclassresponsibility
bind: aGoal runtime: aRuntime
	^ streams inject: SKStream failure into: [ :m :s | (s bind: aGoal runtime: aRuntime) fairPlus: m ].