running
run: aState runtime: aRuntime
	"When a guarded clause is first run, either fire immediately if the var is bound, or else schedule it for future execution."
	| v |
"	ABBench a: ["
	v := aState walk: var.
	v isSKVar ifFalse: [ ^ self fire: v in: aState runtime: aRuntime ].
	^ aState add: v schedule: (self reassignVar: v).
	"] b: [
	v := aState substitution walkBinding: var."
	"If the binding is free, or is bound but the var is in the schedule, add to schedule."
	
	"]"