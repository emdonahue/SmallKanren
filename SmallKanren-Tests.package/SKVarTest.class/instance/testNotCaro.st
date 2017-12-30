tests
testNotCaro
	self
		assert: ((empty notCaro: 1) run: state) isEmptyStream. self
		assert: ((oneCons notCaro: 1) run: state) isEmptyStream. self
		assert: ((twoCons notCaro: 1) run: state) isState