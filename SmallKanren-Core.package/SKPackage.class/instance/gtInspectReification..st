inspecting
gtInspectReification: composite
	<gtInspectorPresentationOrder: 20>
	<todo>
	composite table
		title: 'Reification';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | a val skReify: self substitution ];
		send: [ :x | self reify: x val ];
		display: [ substitution asArray , (constraints asArray collect: [ :a | FDSAssociation key: a key val: a value]) ];
		when: [ substitution isNotEmpty | constraints isNotEmpty ].