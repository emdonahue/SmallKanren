inspecting
gtInspectLeaves: composite 
	<gtInspectorPresentationOrder: 30>
	^ composite list
		title: [ 'Leaves' ];
		display: [ stream leaves ];
		send: [ :s | self subStream: s ];
		format: [ :s | s streamFormat: runtime query ];
		when: [ stream leaves size > 1 ];
		yourself.