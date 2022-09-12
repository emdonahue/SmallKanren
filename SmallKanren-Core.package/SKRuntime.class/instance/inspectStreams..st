inspecting
inspectStreams: aBuilder
	<inspectorPresentationOrder: 3 title: 'Streams'>
	<ignoreForCoverage>
	^ aBuilder newTree
		roots: { stream };
		children: [ :g | g substreams ];
		display: [ :g | g inspectorFormat ];
		expandRoots.