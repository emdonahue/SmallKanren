inspecting
gtInspectorReification: composite
	<gtInspectorPresentationOrder: 20>
	<todo>
	composite table
		title: 'Reification';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | a value skReify: self ];
		send: [ :x | self reify: x value ];
		display: [ substitution  asArray , constraints asArray ];
		when: [ self isNotEmpty ]