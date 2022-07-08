streaming-mplus
plus: aStream runtime: aRuntime
	"By default, streams without special priority needs let the other stream go first to create the classic MiniKanren interleaving search."
	^ (self plus: aStream) runtime: aRuntime.