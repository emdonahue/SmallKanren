*SmallKanren-Core
skUnifyCons: aCons
	"We can't implement polymorphically due to laziness: we don't know yet if the cons is empty or not."
	^ self ifEmpty: SKGoal fail 
		ifNotEmpty: [ :s | s car === aCons car andUnify: s cdr with: aCons cdr ]