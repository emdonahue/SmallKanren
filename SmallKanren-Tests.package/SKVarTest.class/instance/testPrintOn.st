tests
testPrintOn
	self assert: SKVar new asString equals: '<0>'.
	self assert: (SKVar new tag: #x) asString equals: '<x:0>'.
	self assert: (x skPrintWithNames: (SKState new unify: x with: 42) varNames) equals: '<0>:42'.
	self assert: (taggedX skPrintWithNames: (SKState new unify: taggedX with: 42) varNames) equals: '<x:0>:42'.
	self assert: ((x cons: y) skPrintWithNames: SKVarNames new) equals: '(<0> . <1>)'.
	self assert: ((x cons: y cons) skPrintWithNames: SKVarNames new) equals: '(<0> <1>)'.
	self assert: ((42 cons: y cons) skPrintWithNames: SKVarNames new) equals: '(42 <0>)'.
	self assert: (x skPrintWithNames: (( (SKState new unify: x with: (42 cons: y)) unify: y with: (51 cons))) varNames) equals: '<0>:(42 51)'.