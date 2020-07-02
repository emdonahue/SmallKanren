substitution
package: aPkg not: bPkg

	^ [ :asub :a_ :bsub :b_ |
		{aPkg === (asub cons: a_ cons).
		bPkg === (bsub cons: b_ cons).
		self substitution: asub not: bsub.} ] asGoal.
	