as yet unclassified
observe: o
	"Add 1 to appropriate count in log space (1 ln = 0)."
	^ self class new 
		n: (self log: n sum: 0); "Add 1 in log space"
		x: (self log: x sum: o ln); "Keep sum of observations for computing mean"
		x2: (self log: x2 sum: (o ** 2) ln). "Keep sum of x^2 for computing variance"