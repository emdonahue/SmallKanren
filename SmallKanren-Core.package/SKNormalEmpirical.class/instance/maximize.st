window management
maximize
	<todo> "combine weightand maximize so we can make the nedominator n-1 with the weight*1"
	| u s2 |
	u := x - n. "sum(x)/n"
	"log[(x^2 - 2ux + u^2)/(n-1)] = log(x^2{ -- log(u2x) ++ log(n*u^2) - log(n-1)"
	s2 := (self log: 
				(self log: x2 sum: "sum x^2 = sum x_i^2 ln (log)"
					2*u + n) difference: " + sum u^2 = n*u^2 = n ln + 2u ln (log)"
			(u + x + 2 ln)) " sum -2ux = -2u sum x_i = 2 ln + u ln + x ln (log) "
		- n. " / (n-1) = - log(n-1)"
		"- (self log: n difference: 0)." " / (n-1) = - log(n-1)"
	^ SKNormalEstimate new mean: u; std: (self logSqrt: s2).