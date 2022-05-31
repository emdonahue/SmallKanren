as yet unclassified
log: a difference: b
	"Subtract log probability b from a. May benefit from specialized implementation of log1p."
	^ a	 + (1 - (b - a) exp) ln.