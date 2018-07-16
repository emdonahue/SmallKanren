inspecting
gtInspectorTables: composite
	<gtInspectorPresentationOrder: 50>
	composite table
		title: 'Tables';
		column: 'Name' evaluated: [ :name_table | name_table key ];
		column: 'Table' evaluated: [ :name_table | name_table value ];
		display: [ tables associations ];
		send: [ :n_t | n_t value ];
		when: [ tables size > 1 ].
	composite table
		title: 'Table';
		column: 'Key' evaluated: [ :k_v | k_v key ];
		column: 'Values' evaluated: [ :k_v | k_v value ];
		display: [ tables anyOne associations ];
		when: [ tables size = 1 ].