inspecting
gtInspectorBranches: aComposite runner: aRunner
	aComposite list
		title: 'Query';
		format: [ :s | s formatQuery: aRunner ];
		send: [ :s | s ifNil: [ aRunner copy step ] ifNotNil: [ s stepMplusBranch: aRunner copy ] ];
		act: [ :s | s inspect ] entitled: 'Inspect';
		display: [ {self} , first asSourceBranch , rest asSourceBranch ]