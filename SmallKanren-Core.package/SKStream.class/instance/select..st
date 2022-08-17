debugging
select: aBlock 
	(aBlock value: self) ifFalse: [ ^ self class failure ].