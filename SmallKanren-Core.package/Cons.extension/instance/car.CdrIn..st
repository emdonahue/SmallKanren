*SmallKanren-Core
car: aCar CdrIn: aBlock
	^ self ifEmpty: [ SKGoal fail ] ifNotEmpty: [ :cons | cons car === aCar andCdr: cons cdr in: aBlock ]