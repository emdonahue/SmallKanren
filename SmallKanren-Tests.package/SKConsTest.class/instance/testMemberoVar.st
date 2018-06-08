member
testMemberoVar
	| lst |
	lst := [ :a | (a membero: 1) ]  asGoal run first first.
	self assert: lst first equals: 1.
	self assert: lst cdr isSKVar.