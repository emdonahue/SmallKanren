inspecting
formatQuery: aRunner
	^ (self reify: aRunner queryVars) skPrintWithNames: aRunner varNames