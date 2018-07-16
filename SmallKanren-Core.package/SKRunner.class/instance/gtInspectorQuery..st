inspecting
gtInspectorQuery: composite
	<gtInspectorPresentationOrder: 10>
	composite list
		title: 'Query';
		format: [ :q_p | 
			'{1}: {2}'
				format:
					{q_p value size.
					q_p key.} ];
		send: [ :q_p | q_p ifNotNil: [ self copy stream: (q_p value expandWhileQueryEquals: q_p key runner: self) ] ];
		display: [ stream streamsByQuery: queryVars ];
		when: [ stream isState not & stream isEmptyStream not & stream isTabledProducer not & stream isWaitingStream not ].