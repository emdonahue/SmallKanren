as yet unclassified
weight: logWeight
	"Scale both log counts by log weight by addition (multiplication in linear scale)."
	^ self class new 
		ones: ones + logWeight;
		zeroes: zeroes + logWeight.
		