running
run: aState runtime: aRuntime
	<type: #SKPackage type: #SKRuntime returns: #SKRuntime>
	^ aState unify: left noWalk: right runtime: aRuntime.