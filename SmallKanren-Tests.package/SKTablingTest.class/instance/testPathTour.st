modes
testPathTour
	| tour |
	tour := [ :plan | self path: #a to: #b plan: plan ] asGoal run.
	self assert: tour first first equals: #b cons .
	self assert: tour second first equals: (#b cons: #a cons: #b cons).