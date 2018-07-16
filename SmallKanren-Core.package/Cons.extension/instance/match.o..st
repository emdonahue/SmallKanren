*SmallKanren-Core
match: aPattern o: aBlock
	<todo>
	"if fully ground, we can probably do this without making a goal and continue eagerly"
	^ SKMatchGoal fromPattern: aPattern var: self block: aBlock.