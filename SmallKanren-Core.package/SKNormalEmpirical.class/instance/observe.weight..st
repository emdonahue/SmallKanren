as yet unclassified
observe: o weight: w
	"Add 1 to appropriate count in log space (1 ln = 0)."
	^ self class new 
		n: (self log: n sum: w); "Add 1 in log space"
		x: (self log: x sum: o ln + w); "Keep sum of observations for computing mean"
		x2: (self log: x2 sum: (o ** 2) ln + w). "Keep sum of x^2 for computing variance"