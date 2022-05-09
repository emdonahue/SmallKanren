probability
maximize: anEstimate
	^ distributions at: anEstimate ifPresent: [ :d | d maximize ] ifAbsent: anEstimate.