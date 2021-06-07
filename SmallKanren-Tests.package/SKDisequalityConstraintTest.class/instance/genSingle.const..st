running
genSingle: isPass const: aPair
	^ aPair
		carCdro: [ :aLhs :aRhs | 
			aLhs === 1 & (aRhs === 1) & (isPass === false) | (aLhs === 1 & (aRhs === 2) & (isPass === true))" | (aLhs === 1 & (aRhs === one) & (isPass === false))
				| (aLhs === one & (aRhs === 1) & (isPass === false)) | (aLhs === 1 & (aRhs === two) & (isPass === true)) | (aLhs === two & (aRhs === 1) & (isPass === true))" ]