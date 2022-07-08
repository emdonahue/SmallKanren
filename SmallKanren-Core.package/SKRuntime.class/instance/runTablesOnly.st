debugging
runTablesOnly
	"Run to the end of the stream and return the runtime. Discards all but final answer. Only useful for debugging tables, since global state will still accumulate."
	| r |
	r := self.
	[ r atEnd ] whileFalse: [ r := r next ].
	^ r tables.