*SmallKanren-Core
skUnifyVar: aVar in: aState

	"Unify Var with a ground value. Occurs check will run automatically but if this is not a list it will be very quick."

	^ aState check: aVar value: self