inspecting
gtInspectorDelays: composite
	<gtInspectorPresentationOrder: 60>
	"Selecting a suspended variable unsuspends it and advances the state. If the variable is part of a conjunction, the whole conjunction is removed, even though other conjoined variables are not run."
	composite tree
		title: 'Delays';
		children: #children;
		display: [ stream suspendedVars ];
		send: [ :v | self copy stream: (stream undelaystep: v runner: self) ];
		when: [ stream isDelayed ].