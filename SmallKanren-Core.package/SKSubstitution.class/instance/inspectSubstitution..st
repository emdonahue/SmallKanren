inspecting
inspectSubstitution: aBuilder
	<inspectorPresentationOrder: 2 title: 'Substitution'>
	^ aBuilder newTable
			addColumn: (SpStringTableColumn title: 'Variable' evaluated: #key);
			addColumn: (SpStringTableColumn title: 'Value' evaluated: #val);
			items: bindings.