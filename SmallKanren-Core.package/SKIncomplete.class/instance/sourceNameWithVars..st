inspecting
sourceNameWithVars: varNames
	^ goal isBlock ifTrue: [  goal skPrintWithNames: (state varNames: varNames) ] ifFalse: [ goal sourceNameWithVars: varNames ]