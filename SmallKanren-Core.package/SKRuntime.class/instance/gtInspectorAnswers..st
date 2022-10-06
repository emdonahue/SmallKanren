inspecting
gtInspectorAnswers: composite
	self halt.
	composite list
		title: 'Answers';
		format: [ :q_p | 
					q_p key asString ];
		send: [ :q_p | q_p ifNotNil: [ self copy stream: q_p value ] ];
		display: [ stream answers collect: [ :s | (s reify: queryVars) -> s ] ];
		when: [ stream isComplete ].