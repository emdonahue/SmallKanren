generative
assert: prog evalsTo: out
	self assert: (self eval: prog) equals: (self read: out first)