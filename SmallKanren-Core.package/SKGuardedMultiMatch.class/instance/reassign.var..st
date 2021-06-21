running
reassign: oldVar var: newVar
	"self haltIf: [ var includes: oldVar ]."
	"^ self reassignVar: (vars collect: [ :v | v = oldVar ifTrue: newVar ifFalse: v ])."