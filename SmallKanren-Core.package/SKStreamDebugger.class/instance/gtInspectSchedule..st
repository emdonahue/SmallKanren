inspecting
gtInspectSchedule: composite 
	<gtInspectorPresentationOrder: 40>
	composite list
		title: 'Schedule';
		send: [ :x | SKScheduleDebugger schedule: x state: stream runtime: runtime ];
		format: [ :g | g asString copyReplaceAll: {Character cr} with: {Character space}];
		display: [ stream schedule ];
		when: [ stream hasSchedule ].