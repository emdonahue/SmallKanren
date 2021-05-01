debugging
at: anIndex
	"Returns a new stream consisting of only the anIndex'th branch of the current mplus or bind. Used for navigating the search tree during debugging."
	^ self copy stream: (stream at: anIndex)