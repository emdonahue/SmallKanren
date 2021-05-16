inspecting
gtInspectorSchedule: composite
	<gtInspectorPresentationOrder: 70>
	composite list
		title: 'Schedule';
		display: [ stream schedule ];
		send: [ :v | self advanceSchedule: v ];
		when: [ stream hasSchedule ].