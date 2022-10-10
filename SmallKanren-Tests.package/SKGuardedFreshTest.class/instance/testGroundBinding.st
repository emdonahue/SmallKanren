tests - pattern
testGroundBinding
	"Ensure fully ground fdsassociations work like any other ground term instead of benig treated as aspecial internal datastructure."
	self assert: [ :q |
		{{x} match: #(_) o: [ :a | true ].
			{FDSAssociation key: x val: 2} match: #(_) o: [ :a | q === a ]} ] asGoal run first
		equals: (FDSAssociation key: x val: 2).