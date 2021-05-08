debugging
subsumedBy: anAbsento
	^ (anAbsento isAbsent: absent) & (rest subsumedBy: anAbsento).