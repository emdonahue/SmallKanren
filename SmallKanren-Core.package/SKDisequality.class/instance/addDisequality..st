adding
addDisequality: aDisequality
	<type: #SKDisequality returns: #SKDisequalityConjoined>
	^ SKDisequalityConjoined new first: aDisequality; rest: self.