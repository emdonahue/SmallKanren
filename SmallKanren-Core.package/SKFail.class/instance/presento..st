presento
presento: aPresento
	aPresento pairs ifEmpty: [ ^ self ].
	
	^ ((aPresento pairs first presento: aPresento term) asGoal presento: (aPresento copy pairs: aPresento pairs cdr)).