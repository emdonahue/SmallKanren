inspecting
gtInspectStep: composite 
	<gtInspectorPresentationOrder: 20>
	composite tree
		title: [ 'Step' ];
		children: [ :s | s children ];
		display: [ stream step: runtime ];
		send: [ :s | self subStream: s ];
		format: [ :s | s streamFormat: runtime query ];
		when: [ stream atEnd not ].