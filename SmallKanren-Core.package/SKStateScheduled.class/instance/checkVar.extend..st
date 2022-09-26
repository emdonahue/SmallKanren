constraining
checkVar: bVar extend: aVar

	^ (super checkVar: bVar extend: aVar)
		  prioritizeVar: aVar
		  schedule: bVar