delayed
testDelayedTypeFail
	"Delays should be able to handle type failure."

	self assert:  ((x carCdrIn: [ :a :d | (a cons: d) === 1 cons ]) & (y isSymbolo) & y isNumbero) step isEmptyStream.