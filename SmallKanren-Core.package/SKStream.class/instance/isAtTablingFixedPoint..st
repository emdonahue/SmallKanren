tabling
isAtTablingFixedPoint: aRuntime
	"Tabled streams that are the top level must check if they have any answers left. If not, they will fail. Non reused streams always have more potential answers, so they are not waiting and just return false for the check."
	^ false.