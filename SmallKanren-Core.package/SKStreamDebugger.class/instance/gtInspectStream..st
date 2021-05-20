inspecting
gtInspectStream: composite 
	<gtInspectorPresentationOrder: 10>
	composite tree
		title: [ 'Stream' ];
		children: [ :s | s children ];
		display: [ stream ];
		send: [ :s | self subStream: s ].