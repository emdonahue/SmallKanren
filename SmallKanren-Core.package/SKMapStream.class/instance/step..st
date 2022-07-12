streaming
step: aRuntime
	"If there is no change in the underlying stream, it must be at a fixed point, so just return self without recomputing the mapped goal to signal a fixed point to the runtime."
	| s |
	s := stream step: aRuntime.
	s == stream ifFalse: [ ^ self map: s runtime: aRuntime ].
	