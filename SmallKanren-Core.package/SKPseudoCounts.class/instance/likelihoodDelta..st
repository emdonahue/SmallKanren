accessing
likelihoodDelta: prevLikelihood
	"Stop when p'/p < x => log p' - log p > log x"
	^ (self log: self likelihood difference: prevLikelihood) - prevLikelihood.