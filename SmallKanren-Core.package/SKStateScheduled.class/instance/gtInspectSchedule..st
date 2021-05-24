inspecting
gtInspectSchedule: composite
	<gtInspectorPresentationOrder: 40>
	composite list
		title: 'Schedule';
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		send: [ :x | x value ];
		display: [ schedule ].