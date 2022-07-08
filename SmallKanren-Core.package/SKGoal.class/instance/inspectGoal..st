inspecting
inspectGoal: aBuilder
	<inspectorPresentationOrder: 1 title: 'Goal'>
	^ aBuilder newTree
		roots: { self };
		children: [ :g | g subgoals ];
		display: [ :g | g inspectorFormat ];
		expandAll.