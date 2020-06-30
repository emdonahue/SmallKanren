generative
assert: prog evalsTo: out
	| evaled |
	evaled := self eval: prog.
	self assert: (self read: out env: evaled) equals: (self reify: evaled)