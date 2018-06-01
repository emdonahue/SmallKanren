tests
setUp
	a := SKDelayedVar new
		vars: {SKVar new};
		block: [  ].
	b := SKDelayedVar new
		vars: {SKVar new};
		block: [  ].
	empty := SKDelayQueue empty