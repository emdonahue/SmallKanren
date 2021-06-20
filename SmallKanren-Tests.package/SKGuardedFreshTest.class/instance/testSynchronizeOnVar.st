tests - array
testSynchronizeOnVar
	self assert: {{x} match: #(1) o: [ true ]. {x} match: #(1) o: [ true ]} asGoal step step schedule size equals: 0.
	self assert: {{x} match: #(1) o: [ true ]. {x} match: #(1) o: [ true ]} asGoal asAnswer substitution size equals: 1.