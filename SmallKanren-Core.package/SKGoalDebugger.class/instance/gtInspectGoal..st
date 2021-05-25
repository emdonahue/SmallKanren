inspecting
gtInspectGoal: composite 
	<gtInspectorPresentationOrder: 10>
	composite tree
		title: [ 'Goal' ];
		children: [ :g | g children ];
		display: [ goal expandFresh ];
		format: [ :g | g asString copyReplaceAll: {Character cr} with: {Character space} ];
		send: [ :g | self subgoal: g ].