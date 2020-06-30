substitution
package: aPkg not: bPkg

	| aVars bVars abVars |
	aVars := self fresh: self vars.
	bVars := self fresh: self vars.
	abVars := aVars collect: [ :v :i | {v. bVars at: i} ].

	^ [ :a :aStore :b :bStore |
			{(a cons: aStore) === aPkg.
			(b cons: bStore) === bPkg.
			}
		] asGoal.
	