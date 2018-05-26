inspecting
gtInspectorReification: composite
	"what is inspection action here?"

	<gtInspectorPresentationOrder: 20>
	<todo>
	self isEmpty
		ifTrue: [ ^ self ].
	composite table
		title: 'Reification';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | a value skReify: self ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		send: [ :x | self reify: x value ];
		display: hashmap associations asArray