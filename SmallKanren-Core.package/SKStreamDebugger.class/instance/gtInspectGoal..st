inspecting
gtInspectGoal: composite 
	"For scheduled states with pending goals."
	<gtInspectorPresentationOrder: 30>
	composite tree
		title: [ 'Goal' ];
		children: [ :g | g children ];
		display: [ stream goal expandFresh ];
		format: [ :g | g asString copyReplaceAll: {Character cr} with: {Character space} ];
		send: [ :g | self subStream: (stream runGoal: runtime) ];
		when: [ stream hasGoal ].