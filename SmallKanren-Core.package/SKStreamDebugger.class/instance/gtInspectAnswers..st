inspecting
gtInspectAnswers: composite 
	<gtInspectorPresentationOrder: 20>
	^ composite list
		title: [ 'Answers' ];
		display: [ stream answers ];
		send: [ :s | self subStream: s ];
		format: [ :s | s streamFormat: runtime query ];
		when: [ stream isComplete ];
		yourself.