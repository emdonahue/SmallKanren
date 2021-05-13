running
testUnification
	self assert: (((x plus: y o: 3) & (x===1) run: s runtime: r) reify: y) equals: 2.