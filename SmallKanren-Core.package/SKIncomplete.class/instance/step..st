streaming
step: runner
	"Each step, an incomplete stream generates fresh variables for each argument in the block, executes its block, and continues the incomplete computation until each branch terminates in an answer or another fresh/incomplete."

	^ (goal expandFresh run: state runtime: runner) .