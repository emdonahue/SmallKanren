parsing
extendPackage: var with: val in: package o: extendedPkg
	^ [ :substitution :constraints :nextSub |
		package === (substitution cons: constraints cons)
		
		& (self extend: var with: val in: substitution o: nextSub)
		& (extendedPkg === (nextSub cons: constraints cons))
		]