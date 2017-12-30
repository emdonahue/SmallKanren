accessing
executionTraces
	^ stream executionTraces collect: [ :s | self copy stream: s ]