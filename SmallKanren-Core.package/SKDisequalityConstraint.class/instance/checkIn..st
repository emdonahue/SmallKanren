checking
checkIn: aState
	"Since disequalities do not start with an obvious variable to check, we can skip checkAgainst and just run the constraint."

	^ (self disunify: aState substitution) constrain: aState