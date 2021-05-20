inspecting
gtInspectGoal: composite 
	<gtInspectorPresentationOrder: 10>
	composite tree
		title: [ 'Goal' ];
		children: [ :g | g children ];
		display: [ goal expandFresh ];
		send: [ :g | self subgoal: g ].