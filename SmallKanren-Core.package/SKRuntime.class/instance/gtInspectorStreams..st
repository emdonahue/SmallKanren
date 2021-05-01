inspecting
gtInspectorStreams: composite
	<gtInspectorPresentationOrder: 30>
	composite list
		title: 'Streams';
		display: [ stream packages ];
		send: [ :s | self copy stream: s ];
		when: [ stream isBranchingStream ].