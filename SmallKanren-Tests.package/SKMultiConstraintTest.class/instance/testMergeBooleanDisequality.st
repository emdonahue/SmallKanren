tests
testMergeBooleanDisequality
	self assert: (booleano merge: (x=/=false) asConstraint) equals: istrue.
	self assert: ((x=/=false) asConstraint merge: booleano) equals: istrue.
	self assert: (booleano merge: (x=/=1) asConstraint) equals: booleano.
	self assert: ((x=/=1) asConstraint merge: booleano) equals: booleano.
	self assert: ((x=/=true), (x=/=false) merge: booleano) equals: unsatisfiable.
	self assert: (booleano merge: (x=/=true), (x=/=false)) equals: unsatisfiable.
	self assert: ((x=/=true), (x=/=true), (x=/=false) merge: booleano) equals: unsatisfiable.
	self assert: ((x=/=false), (x=/=false), (x=/=false) merge: booleano) equals: istrue.
	self assert: ((x=/=y) merge: booleano) equals: booleano, (x=/=y).
	self assert: (booleano merge: (x=/=y) asConstraint) equals: (x=/=y), booleano.
	self assert: (((x=/=false & x isBooleano) run: s runtime: r) reify: x) equals: true.
	self assert: (((x isBooleano & (x=/=false)) run: s runtime: r) reify: x) equals: true.
	self assert: ((x isBooleano & (x=/=false) & (x=/=true)) run: s runtime: r) isFailure.
	self assert: ((((x=/=y) & x isBooleano & y isBooleano & (x=/=false)) run: s runtime: r) reify: x) equals: true.
	self assert: ((((x=/=y) & x isBooleano & y isBooleano & (x=/=false)) run: s runtime: r) reify: y) equals: false.
	self assert: (((x isBooleano & z isBooleano & (x=/=z) & (y=/=false) & (y=/=1) & (x===y)) run: s runtime: r) reify: z) equals: false.