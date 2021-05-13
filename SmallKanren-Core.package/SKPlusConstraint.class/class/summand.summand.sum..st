as yet unclassified
summand: aNumber summand: aSummand sum: aSum 
	"aNumber is already ground. Create the goal."
	aSummand isSKVar ifFalse: [ ^ aSum === (aNumber + aSummand) ].
	aSum isSKVar ifFalse: [ ^ aSummand === (aSum - aNumber) ].
	^ (self new summand: aNumber; sum: aSum) asGoal: aSummand.
