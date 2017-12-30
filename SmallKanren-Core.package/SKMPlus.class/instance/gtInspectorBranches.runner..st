inspecting
gtInspectorBranches: aComposite runner: aRunner
	aComposite list
		title: 'Branches';
		format: [ :s | (s sourceNameWithVars: aRunner varNames) , Character cr asString ];
		send: [ :s | s ifNil: [ aRunner step: self ] ifNotNil: [ s stepMplusBranch: aRunner ] ];
		display: [ {self} , left asSourceBranch , right asSourceBranch ]