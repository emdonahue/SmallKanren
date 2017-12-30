list
rest: theRest
	"Binds theRest to the cdr of the list bound to self."
	| anElement|
	anElement := SKVar new.
	^ self caro: anElement cdro: theRest.
	