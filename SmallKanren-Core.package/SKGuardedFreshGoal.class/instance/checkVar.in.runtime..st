running
checkVar: aVar in: aState runtime: aRuntime
	<todo> "Can there be a path that totally doesn't walk the right term, since these vars are guaranteed to be free? maybe a 'definitely free' var that wraps the other var?"
	| s u |
	u := self unifier.
	s := (aState unify: aVar with: u runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	^ self check: u in: s runtime: aRuntime.
	