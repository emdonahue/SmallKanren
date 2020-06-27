substitution
extendPackage: var with: val in: package o: extendedPkg
	^ [ :substitution :store :nextSub | 
	package === (substitution cons: store cons)
		& (self extend: var with: val in: substitution o: nextSub)
		& (extendedPkg === (nextSub cons: store cons)) ] asGoal