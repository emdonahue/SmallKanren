as yet unclassified
gtInspectDebugger: composite 
	<todo> "all goals should have this inspector"
	<gtInspectorPresentationOrder: 10>
	composite list 
		title: [ 'Debugger' ];
		display: [ { self } ];
		format: [ block ];
		send: [ self debugger ].