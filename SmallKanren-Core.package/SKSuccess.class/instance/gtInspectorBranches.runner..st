inspecting
gtInspectorBranches: aComposite runner: aRunner
	aComposite list
		title: 'Branches';
		format: [ :s | (s sourceWithRunner: aRunner) , Character cr asString ];
		send: [ :s | s ifNil: [ aRunner step: self ] ifNotNil: [ s stepMplusBranch: aRunner ] ];
		display: [ {first} , rest asSourceBranch ]