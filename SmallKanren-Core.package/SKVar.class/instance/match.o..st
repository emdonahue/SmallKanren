matching
match: aPattern o: aBlock
	^ self match2: aPattern o: aBlock.
	"^ SKMatchGoal fromPattern: aPattern var: self block: aBlock"