debugging
prune: anIndex
	"Returns a runner with the stream pruned down to the selected branch of an mplus stream."
	^ self copy stream: (stream prune: anIndex)