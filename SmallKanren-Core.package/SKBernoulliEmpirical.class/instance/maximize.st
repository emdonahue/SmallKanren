window management
maximize
	"Estimate maximum log likelihood by summing the expected ones and zeros and dividing ones by total in log space."
	"log(a/(a+z)) = log(a) - log(a+z)."
	^ SKBernoulliEstimate new logP: ones - (self log: ones sum: zeroes).