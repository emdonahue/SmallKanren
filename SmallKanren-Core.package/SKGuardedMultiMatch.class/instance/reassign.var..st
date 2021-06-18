running
reassign: oldVar var: newVar
	
	"^ self reassignVar: (vars collect: [ :v | v = oldVar ifTrue: newVar ifFalse: v ])."