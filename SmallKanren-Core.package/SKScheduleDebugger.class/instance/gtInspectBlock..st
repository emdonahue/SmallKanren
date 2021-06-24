inspecting
gtInspectBlock: composite 
	<gtInspectorPresentationOrder: 20>
	composite text
		title: [ 'Block' ];
		format: [ :b | ((1 to: b size) collect: [ :i | state reify: (b at: i) ]) asString, Character cr asString, b asString ];
		display: [ schedule block ];
		when: [ schedule isSingle ].
	