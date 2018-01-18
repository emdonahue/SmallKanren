*SmallKanren-Core
car: aCar cdrIn: aBlock
	^ self ifEmpty: [ SKGoal fail ] ifNotEmpty: [ :cons | cons car === aCar andCdr: cons cdr in: aBlock ]