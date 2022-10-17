as yet unclassified
scheduleVar
	"Returns the most specific var (either a bound var or the binding var of a value), which is the var that will be in the schedule, if at all."
	val isSKVar ifTrue: [ ^ val ].
	^ key.