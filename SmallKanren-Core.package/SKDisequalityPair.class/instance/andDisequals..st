disequality
andDisequals: aVal 
	^ SKDisequalityConjoined new first: (SKDisequalitySingle new val: aVal); rest: self.