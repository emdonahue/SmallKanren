generative
assert: prog evalsTo: out
	| evaled |
	evaled := self eval: prog.
	self assert: (self reify: evaled) equals: (self read: out env: evaled)