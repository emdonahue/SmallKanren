tests
testTableFree
	| r t x |
	x := SKVar tag: #x.
	r := (self path: #a to: x) runner.
	r runAll.
	t := r tables at: #path.
t inspect.