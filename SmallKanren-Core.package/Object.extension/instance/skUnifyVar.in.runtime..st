*SmallKanren-Core
skUnifyVar: aVar in: aState runtime: aRuntime
	"Unify Var with a ground value. Occurs check will run automatically but if this is not a list it will be very quick."

	^ aState check: self extend: aVar runtime: aRuntime