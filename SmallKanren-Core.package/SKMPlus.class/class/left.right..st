initialize-release
left: leftAnswer right: rightAnswer
	^ self new
		left: leftAnswer;
		right: rightAnswer;
		score: (leftAnswer score)