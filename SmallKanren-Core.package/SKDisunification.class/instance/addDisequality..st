adding
addDisequality: aDisequality
	<type: #SKDisequality type: #SKDisequalityConjoined>
	^ SKDisequalityConjoined new first: aDisequality; rest: self.