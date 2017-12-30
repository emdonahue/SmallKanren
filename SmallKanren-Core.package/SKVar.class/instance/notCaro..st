list
notCaro: aCar
	| car |
	car := SKVar new.
	^ (self caro: car) & (car =/= aCar) 