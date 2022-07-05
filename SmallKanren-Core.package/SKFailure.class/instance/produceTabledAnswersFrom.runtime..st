tabling
produceTabledAnswersFrom: tabledStream runtime: aRuntime
	"If the stream underlying a tabled producer fails, there is nothing to cache and the whole stream should fail."
	^ self runtime: aRuntime.
	