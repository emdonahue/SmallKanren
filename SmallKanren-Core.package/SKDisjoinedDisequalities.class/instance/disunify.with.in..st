checking
disunify: aVar with: aVal in: aSubstitution
	"^ next disunify: aVar with: aVal in: (aSubstitution disunify: aVar with: aVal)."
	^ (constraint disunify: aVar with: aVal in: aSubstitution) disunify: next in: aSubstitution.