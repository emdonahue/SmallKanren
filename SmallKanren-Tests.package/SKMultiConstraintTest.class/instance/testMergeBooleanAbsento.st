tests
testMergeBooleanAbsento
	self assert: (booleano merge: (x absento: false) asConstraint) equals: istrue.
	self assert: ((x absento: false) asConstraint merge: booleano) equals: istrue.
	self assert: (booleano merge: (x absento: 1) asConstraint) equals: booleano.
	self assert: ((x absento: 1) asConstraint merge: booleano) equals: booleano.
	self assert: ((x absento: true), (x absento: false) merge: booleano) equals: unsatisfiable.
	self assert: (booleano merge: (x absento: true), (x absento: false)) equals: unsatisfiable.
	self assert: ((x absento: true), (x absento: true), (x absento: false) merge: booleano) equals: unsatisfiable.
	self assert: ((x absento: false), (x absento: false), (x absento: false) merge: booleano) equals: istrue.
	self assert: ((((x absento: false) & x isBooleano) run: s runtime: r) reify: x) equals: true.
	self assert: (((x isBooleano & (x absento: false)) run: s runtime: r) reify: x) equals: true.
	self assert: ((x isBooleano & (x absento: false) & (x absento: true)) run: s runtime: r) isFailure.