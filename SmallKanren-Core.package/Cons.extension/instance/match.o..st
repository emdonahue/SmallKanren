*SmallKanren-Core
match: aPattern o: aBlock
	<todo>
	"if fully ground, we can probably do this without making a goal and continue eagerly"
	^ self match2: aPattern o: aBlock.
	"^ SKMatchGoal fromPattern: aPattern var: self block: aBlock."