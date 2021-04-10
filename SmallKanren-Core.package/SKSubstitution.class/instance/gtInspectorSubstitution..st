inspecting
gtInspectorSubstitution: composite
	<gtInspectorPresentationOrder: 30>
	composite table
		title: 'Substitution';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | a value ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		send: [ :x | x value ];
		display: [ hashmap associations asArray ].