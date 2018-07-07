inspecting
gtInspectorTables: composite
	<gtInspectorPresentationOrder: 50>
	composite table
		title: 'Tables';
		column: 'Name' evaluated: [ :name_table | name_table key ];
		column: 'Table' evaluated: [ :name_table | name_table value ];
		display: [ tables associations ];
		send: [ :name_table | name_table value ];
		when: [ tables isNotEmpty ].