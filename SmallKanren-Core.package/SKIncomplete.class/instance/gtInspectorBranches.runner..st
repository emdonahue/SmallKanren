inspecting
gtInspectorBranches: aComposite runner: aSKRunner
	aComposite list
		title: 'Branches';
		format: [ :s | s sourceNameWithVars: aSKRunner varNames ];
		send: [ :s | aSKRunner step: self ];
		display: [ {self} ]