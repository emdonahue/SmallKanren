inspecting
gtInspectLookahead: composite 
	<gtInspectorPresentationOrder: 100>
	^ composite table
		title: [ 'Lookahead' ];
		display: [ stream leaves ];
		send: [ :s | self subStream: s ];
		column: 'Result' evaluated: [ :s | 
			(self succeedsOrFails: s withinSteps: (options at: #lookahead)) 
				ifNil: '' ifNotNil: [ :steps_result | steps_result ] ];
		column: 'State' evaluated: [ :s | s streamFormat: runtime query ];
		yourself.