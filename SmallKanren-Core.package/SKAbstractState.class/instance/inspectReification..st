inspecting
inspectReification: aBuilder
	<inspectorPresentationOrder: 1 title: 'Reification'>
	^ aBuilder newTable
			addColumn: (SpStringTableColumn title: 'Variable' evaluated: #key);
			addColumn: (SpStringTableColumn title: 'Value' evaluated: #val);
			items: (self substitution bindings collect: [ :x | x copy val: (self reify: x val) ]).