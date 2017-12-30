list
first: anElement
	"Binds anElement to the car of the list bound to self."
	| theRest |
	theRest := SKVar new.	
	^ self caro: anElement cdro: theRest.