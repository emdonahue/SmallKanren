scoring
scoreState: aState mergedWithBranch: streamHistory
	"Merges the final branch into a now-complete State, scores it, and returns the result to the user."

	| history 
	|
	history := (self mergeBranch: streamHistory withTree: aState history).
	^ self scoreState: aState withHistory: history