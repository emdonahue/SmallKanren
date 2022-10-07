inspecting
inspectSchedule: aBuilder
	<inspectorPresentationOrder: 4 title: 'Schedule'>
	^ aBuilder newTable
			addColumn: (SpStringTableColumn title: 'Variables' evaluated: #externals);
			addColumn: (SpStringTableColumn title: 'Block' evaluated: #block);
			items: self schedule asOrderedCollection.