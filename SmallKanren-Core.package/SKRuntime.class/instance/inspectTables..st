inspecting
inspectTables: aBuilder
	<inspectorPresentationOrder: 1 title: 'Tables'>
	
	tables keysAndValuesDo: [ :tableName :table |
	^ aBuilder newNotebook
		addPageTitle: tableName provider: [ 
			aBuilder newTable
				addColumn: (SpStringTableColumn title: 'Key' evaluated: #key);
				addColumn: (SpStringTableColumn title: 'Cache' evaluated: [ :kv | ' ' join: kv value ]);
				items: (table associations collect: [:e | StInspectorAssociationNode hostObject: e ])]].