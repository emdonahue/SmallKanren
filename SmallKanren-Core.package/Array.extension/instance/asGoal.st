*SmallKanren-Core
asGoal
	"Consider whether this can be tweaked to better enable composition of sub arrays from functions that don't turn them into condes. injecting a goal into a list and & them together creates issues if we return non goal arrays {g. {stuff. stuff}}. see finite interpreter extend store."

	"self size = 1 & self first isArray
		ifTrue: [ ^ self first inject: SKGoal fail into: [ :disj :g | disj | g ] ]."

	<todo>
	^ self inject: SKGoal succeed into: [ :conj :g | conj & g asConde ]