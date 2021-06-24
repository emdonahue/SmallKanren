inspecting
gtInspectClosure: composite 
	<gtInspectorPresentationOrder: 30>
	composite list
		title: [ 'Closure' ];
		display: [ :b | (1 to: schedule block size) collect: [ :i | (schedule block at: i) -> (state reify: (schedule block at: i)) ] ];
		when: [ schedule isSingle ].
	