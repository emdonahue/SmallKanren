*SmallKanren-Core
car: aCar cdrIn: aBlock
	^ self
		ifEmpty: [ SKGoal fail ]
		ifNotEmpty: [ :cons | cons peek === aCar andUndelay: cons step in: aBlock ]