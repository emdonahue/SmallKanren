inspecting
gtInspectStep: composite 
	<gtInspectorPresentationOrder: 10>
	| stream |
	stream := schedule scheduledRun: (state removeSchedule: schedule) runtime: runtime.
	^ composite tree
		title: [ 'Step' ];
		children: [ :s | s children ];
		display: [ stream ];
		send: [ :s | SKStreamDebugger stream: s runtime: runtime ];
		format: [ :s | s streamFormat: runtime query ].
	