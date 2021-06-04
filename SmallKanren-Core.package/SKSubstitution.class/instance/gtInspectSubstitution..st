inspecting
gtInspectSubstitution: composite
	<gtInspectorPresentationOrder: 30>
	composite table
		title: 'Substitution';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | a val ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		send: [ :x | x val ];
		display: [ hashmap asArray ];
		when: [ self isNotEmpty ].