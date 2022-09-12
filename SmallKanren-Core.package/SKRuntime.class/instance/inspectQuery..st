inspecting
inspectQuery: aBuilder
	<inspectorPresentationOrder: 1 title: 'Query'>
	| streamsByQuery |
	streamsByQuery := Dictionary new.
	stream inspectQuery: queryVars streams: streamsByQuery.
	^ aBuilder newTable
		addColumn: (SpStringTableColumn title: 'Query' evaluated: [ :x | x key ]);
		addColumn: ((SpStringTableColumn title: 'Count' evaluated: [ :x | x value size ]) width: 65);
		items: (streamsByQuery associations collect: [:e | 
			StInspectorAssociationNode hostObject: 
				e key -> (self copy stream: (e value reduce: [ :a :b | a + b ])) ]).