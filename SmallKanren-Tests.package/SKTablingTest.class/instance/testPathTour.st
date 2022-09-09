tests-pathing
testPathTour
	| tour |
	tour := [ :plan | self path: #a to: #b plan: plan ] asGoal runList.
	self assert: tour first first equals: #b cons.
	self assert: tour size equals: 1.