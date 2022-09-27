inspecting
gtInspectReification: composite
	<gtInspectorPresentationOrder: 20>	
		
	composite table
		title: 'Reification';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | a val skReify: self ];
		selectionAct: [ :x | x selection value val inspect ] entitled: 'Inspect';
		send: [ :x | self reify: x val ];
		display: [ bindings asArray ];
		when: [ self isNotEmpty ].