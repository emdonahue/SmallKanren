running
run: aState runtime: aRuntime
	"When a guarded clause is first run, either fire immediately if the var is bound, or else schedule it for future execution."
	| v |
	v := aState walk: var.
	v isSKVar ifFalse: [ ^ self fire: v in: aState runtime: aRuntime ].
	^ aState add: v schedule: (self reassignVar: v).