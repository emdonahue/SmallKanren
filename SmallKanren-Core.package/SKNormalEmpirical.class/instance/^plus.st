arithmetic
+ aNormal
	^ self class new 
		x: (self log: x sum: aNormal x);
		x2: (self log: x2 sum: aNormal x2);
		n: (self log: n sum: aNormal n).