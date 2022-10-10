tests - pattern
testGroundBinding
	self assert: [ :q |
		{{x} match: #(_) o: [ :a | true ].
			{FDSAssociation key: x val: 2} match: #(_) o: [ :a | q === a ]} ] asGoal run first
		equals: (FDSAssociation key: x val: 2).