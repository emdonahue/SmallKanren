checking
disunify: aSubstitution
	"Each Disequality should check against the original aSubstitution. If this check fails, the returned constraint may decide that no further checks are necessary."

	^ (constraint disunify: aSubstitution) disunify: next in: aSubstitution