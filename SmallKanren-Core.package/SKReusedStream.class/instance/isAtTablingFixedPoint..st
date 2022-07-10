testing
isAtTablingFixedPoint: aRuntime
	"If we are at the end of the current cache, we are waiting."
	^ consumed == (aRuntime table: table cache: cache).