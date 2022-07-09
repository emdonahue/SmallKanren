inspecting
inspectReification: aBuilder
	<inspectorPresentationOrder: 1 title: 'Reification'>
	^ aBuilder newTable
			addColumn: (SpStringTableColumn title: 'Variable' evaluated: #key);
			addColumn: (SpStringTableColumn title: 'Value' evaluated: [ :x | self reify: x value ]);
			items: substitution hashmap asDictionary.