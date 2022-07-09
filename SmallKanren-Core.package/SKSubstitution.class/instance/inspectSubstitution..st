inspecting
inspectSubstitution: aBuilder
	<inspectorPresentationOrder: 1 title: 'Substitution'>
	^ aBuilder newTable
			addColumn: (SpStringTableColumn title: 'Variable' evaluated: #key);
			addColumn: (SpStringTableColumn title: 'Value' evaluated: #value);
			items: hashmap asDictionary.