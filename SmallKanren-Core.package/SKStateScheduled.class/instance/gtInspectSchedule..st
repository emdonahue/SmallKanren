inspecting
gtInspectSchedule: composite
	<gtInspectorPresentationOrder: 40>
	composite table
		title: 'Schedule';
		column: 'Variable' evaluated: [ :a | ' ' ];
		column: 'Fresh' evaluated: [ :a | a ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		send: [ :x | x value ];
		display: [ schedule ].