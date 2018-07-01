inspecting
gtInspectorQuery: composite
	<gtInspectorPresentationOrder: 10>
	composite list
		title: 'Query';
		format: [ :q_p |'{1}: {2}' format: {q_p value size. q_p key } ];
		send: [ :q_p | q_p ifNotNil: [ self copy stream: (q_p value inject: SKStream failure into: [ :mplus :package | mplus + package ]) ] ];
		"	act: [ :s | s inspect ] entitled: 'Inspect';"
			display: [ (stream packages groupedBy: [ :p | p reify: queryVars ]) associations ].