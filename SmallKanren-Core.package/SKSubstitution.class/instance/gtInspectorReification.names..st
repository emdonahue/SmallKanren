inspecting
gtInspectorReification: composite names: aLabeler
	self isEmpty
		ifTrue: [ ^ self ].

	composite table
		title: 'Reification';
		column: 'Variable' evaluated: [ :a | aLabeler tagOf: a key ];
		column: 'Value' evaluated: [ :a | (a value skReify: self) skPrintWithNames: aLabeler ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		display: hashmap associations asArray