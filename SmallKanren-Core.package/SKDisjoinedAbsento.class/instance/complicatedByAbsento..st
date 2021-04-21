merging
complicatedByAbsento: anAbsento
	<todo> "could potentially determine if either is a single constraint and leave the other intact"
	^ self | (self rest complicatedByAbsento: anAbsento).