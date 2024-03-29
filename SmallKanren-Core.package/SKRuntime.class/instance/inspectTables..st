inspecting
inspectTables: aBuilder
	<inspectorPresentationOrder: 4 title: 'Tables'>
	<ignoreForCoverage>
	| notebook |
	notebook := aBuilder newNotebook.
	"tables ifEmpty: [ self halt. notebook hide ]."
	tables keysAndValuesDo: [ :tableName :table |
		notebook
			addPageTitle: tableName provider: [ 
				aBuilder newTable
					addColumn: (SpStringTableColumn title: 'Key' evaluated: [ :x | x key force ]);
					addColumn: (SpStringTableColumn title: 'Closed' evaluated: [ :x | x value isClosed ]);
					addColumn: (SpStringTableColumn title: 'Cache' evaluated: [ :kv | ' ' join: kv value entries ]);
					items: (table associations collect: [:e | StInspectorAssociationNode hostObject: e ])]].
	^ notebook.