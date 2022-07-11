inspecting
inspectStreams: aBuilder
	<inspectorPresentationOrder: 1 title: 'Streams'>
	<ignoreForCoverage>
	^ aBuilder newTree
		roots: { stream };
		children: [ :g | g substreams ];
		display: [ :g | g inspectorFormat ];
		expandRoots.