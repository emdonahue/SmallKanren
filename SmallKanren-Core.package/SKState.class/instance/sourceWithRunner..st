inspecting
sourceWithRunner: aRunner
	^ (self reify: aRunner queryVars) skPrintWithNames: aRunner varNames