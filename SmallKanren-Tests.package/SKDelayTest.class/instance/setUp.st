running
setUp
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	z := SKVar tag: #z.
	SKDelayed enforceContractC.
	SKState enforceContractC.
	SKPackage enforceContractC.
	SKGoal enforceContractC